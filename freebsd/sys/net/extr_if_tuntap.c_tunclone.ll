; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunclone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunclone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.cdev = type { i32 }
%struct.tuntap_driver = type { i32, i32 }

@SPECNAMELEN = common dso_local global i32 0, align 4
@IF_MAXUNIT = common dso_local global i32 0, align 4
@PRIV_NET_IFCREATE = common dso_local global i32 0, align 4
@TUN_L2 = common dso_local global i32 0, align 4
@tap_allow_uopen = common dso_local global i64 0, align 8
@tapdclone = common dso_local global i64 0, align 8
@tundclone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ucred*, i8*, i32, %struct.cdev**)* @tunclone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunclone(i8* %0, %struct.ucred* %1, i8* %2, i32 %3, %struct.cdev** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tuntap_driver*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cdev** %4, %struct.cdev*** %10, align 8
  %20 = load i32, i32* @SPECNAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %26 = load %struct.cdev*, %struct.cdev** %25, align 8
  %27 = icmp ne %struct.cdev* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 1, i32* %19, align 4
  br label %125

29:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  %30 = load %struct.ucred*, %struct.ucred** %7, align 8
  %31 = call i32 @CRED_TO_VNET(%struct.ucred* %30)
  %32 = call i32 @CURVNET_SET(i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @tuntap_name2info(i8* %33, i32* %16, i32* %17)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %123

37:                                               ; preds = %29
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @IF_MAXUNIT, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %123

45:                                               ; preds = %40, %37
  %46 = load %struct.ucred*, %struct.ucred** %7, align 8
  %47 = load i32, i32* @PRIV_NET_IFCREATE, align 4
  %48 = call i64 @priv_check_cred(%struct.ucred* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @TUN_L2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %45
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @tap_allow_uopen, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55
  %62 = load i64, i64* @tapdclone, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %18, align 4
  br label %76

67:                                               ; preds = %45
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* @tundclone, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %123

80:                                               ; preds = %76
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  br label %85

84:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, i32* %17, align 4
  %87 = call %struct.tuntap_driver* @tuntap_driver_from_flags(i32 %86)
  store %struct.tuntap_driver* %87, %struct.tuntap_driver** %13, align 8
  %88 = load %struct.tuntap_driver*, %struct.tuntap_driver** %13, align 8
  %89 = icmp eq %struct.tuntap_driver* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %123

91:                                               ; preds = %85
  %92 = load %struct.tuntap_driver*, %struct.tuntap_driver** %13, align 8
  %93 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %92, i32 0, i32 1
  %94 = load %struct.tuntap_driver*, %struct.tuntap_driver** %13, align 8
  %95 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %94, i32 0, i32 0
  %96 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %97 = call i32 @clone_create(i32* %93, i32* %95, i32* %16, %struct.cdev** %96, i32 0)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %91
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = trunc i64 %22 to i32
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @snprintf(i8* %24, i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  store i8* %24, i8** %8, align 8
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.tuntap_driver*, %struct.tuntap_driver** %13, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.ucred*, %struct.ucred** %7, align 8
  %112 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @tun_create_device(%struct.tuntap_driver* %109, i32 %110, %struct.ucred* %111, %struct.cdev** %112, i8* %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %108, %91
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @if_clone_create(i8* %119, i32 %120, i32* null)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %90, %79, %44, %36
  %124 = call i32 (...) @CURVNET_RESTORE()
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %123, %28
  %126 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %19, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CURVNET_SET(i32) #2

declare dso_local i32 @CRED_TO_VNET(%struct.ucred*) #2

declare dso_local i64 @tuntap_name2info(i8*, i32*, i32*) #2

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #2

declare dso_local %struct.tuntap_driver* @tuntap_driver_from_flags(i32) #2

declare dso_local i32 @clone_create(i32*, i32*, i32*, %struct.cdev**, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @tun_create_device(%struct.tuntap_driver*, i32, %struct.ucred*, %struct.cdev**, i8*) #2

declare dso_local i32 @if_clone_create(i8*, i32, i32*) #2

declare dso_local i32 @CURVNET_RESTORE(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
