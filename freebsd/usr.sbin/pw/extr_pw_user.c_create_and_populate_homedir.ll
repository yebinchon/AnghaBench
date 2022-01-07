; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_create_and_populate_homedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_create_and_populate_homedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.userconf = type { i32 }
%struct.passwd = type { i32, i64, i32, i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@M_UPDATE = common dso_local global i32 0, align 4
@M_ADD = common dso_local global i32 0, align 4
@W_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s(%ju) home %s made\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.userconf*, %struct.passwd*, i8*, i32, i32)* @create_and_populate_homedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_and_populate_homedir(%struct.userconf* %0, %struct.passwd* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.userconf*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.userconf* %0, %struct.userconf** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %13 = load %struct.passwd*, %struct.passwd** %7, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mkdir_home_parents(i32 %12, i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @O_DIRECTORY, align 4
  %36 = load i32, i32* @O_CLOEXEC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @openat(i32 %33, i8* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %32, %19, %5
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %41 = load %struct.passwd*, %struct.passwd** %7, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.passwd*, %struct.passwd** %7, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.passwd*, %struct.passwd** %7, align 8
  %50 = getelementptr inbounds %struct.passwd, %struct.passwd* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @copymkdir(i32 %40, i32 %43, i32 %44, i32 %45, i64 %48, i32 %51, i32 0)
  %53 = load %struct.userconf*, %struct.userconf** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* @M_UPDATE, align 4
  br label %60

58:                                               ; preds = %39
  %59 = load i32, i32* @M_ADD, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* @W_USER, align 4
  %63 = load %struct.passwd*, %struct.passwd** %7, align 8
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.passwd*, %struct.passwd** %7, align 8
  %67 = getelementptr inbounds %struct.passwd, %struct.passwd* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.passwd*, %struct.passwd** %7, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pw_log(%struct.userconf* %53, i32 %61, i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @mkdir_home_parents(i32, i32) #1

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32 @copymkdir(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
