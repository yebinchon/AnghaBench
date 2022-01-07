; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_kopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_kopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kvm_openfiles: %s\00", align 1
@nl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"kvm_nlist: %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"kvm_nlist: no namelist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @kopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kopen(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32* @kvm_openfiles(i32* null, i8* %12, i32* null, i32 %13, i8* %11)
  store i32* %14, i32** %4, align 8
  %15 = call i32 (...) @getgid()
  %16 = call i64 @setgid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %28 = call i64 @kvm_nlist(i32* %26, %struct.TYPE_3__* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @kvm_geterr(i32* %31)
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %44

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %44

42:                                               ; preds = %34
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

44:                                               ; preds = %40, %30
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @kvm_close(i32* %45)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %42, %23
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kvm_openfiles(i32*, i8*, i32*, i32, i8*) #2

declare dso_local i64 @setgid(i32) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @kvm_nlist(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @kvm_geterr(i32*) #2

declare dso_local i32 @kvm_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
