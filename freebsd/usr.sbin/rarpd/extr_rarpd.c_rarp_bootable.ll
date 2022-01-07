; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_bootable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_bootable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@rarp_bootable.dd = internal global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@tftp_dir = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"chdir: %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"opendir: %m\00", align 1
@pidfile_fh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rarp_bootable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rarp_bootable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [9 x i8], align 1
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ntohl(i32 %8)
  %10 = trunc i64 %9 to i32
  %11 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** @rarp_bootable.dd, align 8
  store i32* %12, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @rewinddir(i32* %15)
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @tftp_dir, align 4
  %19 = call i32 @chdir(i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i32, i32* @tftp_dir, align 4
  %24 = call i32 (i32, i8*, ...) @logmsg(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %49

25:                                               ; preds = %17
  %26 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = call i32 (i32, i8*, ...) @logmsg(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %49

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  store i32* %33, i32** @rarp_bootable.dd, align 8
  br label %34

34:                                               ; preds = %32, %14
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.dirent* @readdir(i32* %36)
  store %struct.dirent* %37, %struct.dirent** %4, align 8
  %38 = icmp ne %struct.dirent* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.dirent*, %struct.dirent** %4, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %44 = call i64 @strncmp(i32 %42, i8* %43, i32 8)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %53

47:                                               ; preds = %39
  br label %35

48:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %29, %21
  %50 = load i32, i32* @pidfile_fh, align 4
  %51 = call i32 @pidfile_remove(i32 %50)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %48, %46
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local i32 @chdir(i32) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @pidfile_remove(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
