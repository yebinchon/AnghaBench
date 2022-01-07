; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.tuntap_driver = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.cdev = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i8*, i64, i32)* @tun_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_clone_create(%struct.if_clone* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_clone*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tuntap_driver*, align 8
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @tuntap_name2info(i8* %16, i32* %15, i32* %14)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %76

22:                                               ; preds = %4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.tuntap_driver* @tuntap_driver_from_flags(i32 %23)
  store %struct.tuntap_driver* %24, %struct.tuntap_driver** %10, align 8
  %25 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %26 = icmp eq %struct.tuntap_driver* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %76

29:                                               ; preds = %22
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %34 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @alloc_unr_specific(i32 %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EEXIST, align 4
  store i32 %40, i32* %5, align 4
  br label %76

41:                                               ; preds = %32
  br label %47

42:                                               ; preds = %29
  %43 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %44 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @alloc_unr(i32 %45)
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %51 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %54)
  store %struct.cdev* null, %struct.cdev** %11, align 8
  %56 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %57 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %56, i32 0, i32 1
  %58 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %59 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %58, i32 0, i32 0
  %60 = call i32 @clone_create(i32* %57, %struct.TYPE_2__* %59, i32* %15, %struct.cdev** %11, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.tuntap_driver*, %struct.tuntap_driver** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @tun_create_device(%struct.tuntap_driver* %64, i32 %65, i32* null, %struct.cdev** %11, i8* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.cdev*, %struct.cdev** %11, align 8
  %73 = call i32 @tuncreate(%struct.cdev* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %39, %27, %20
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @tuntap_name2info(i8*, i32*, i32*) #1

declare dso_local %struct.tuntap_driver* @tuntap_driver_from_flags(i32) #1

declare dso_local i32 @alloc_unr_specific(i32, i32) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @clone_create(i32*, %struct.TYPE_2__*, i32*, %struct.cdev**, i32) #1

declare dso_local i32 @tun_create_device(%struct.tuntap_driver*, i32, i32*, %struct.cdev**, i8*) #1

declare dso_local i32 @tuncreate(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
