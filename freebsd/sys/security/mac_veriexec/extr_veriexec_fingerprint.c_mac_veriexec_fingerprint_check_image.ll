; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_check_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_check_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.image_params = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }

@VERIEXEC_STATE_ACTIVE = common dso_local global i32 0, align 4
@EAUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"got unexpected FINGERPRINT_INVALID\00", align 1
@EPERM = common dso_local global i32 0, align 4
@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Fingerprint matches\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"attempted direct execution\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"fingerprint does not match loaded value\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"no fingerprint\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no signatures for device\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid status field for vnode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_veriexec_fingerprint_check_image(%struct.image_params* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.image_params*, %struct.image_params** %5, align 8
  %12 = getelementptr inbounds %struct.image_params, %struct.image_params* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %8, align 8
  %14 = load i32, i32* @VERIEXEC_STATE_ACTIVE, align 4
  %15 = call i64 @mac_veriexec_in_state(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

18:                                               ; preds = %3
  %19 = load %struct.vnode*, %struct.vnode** %8, align 8
  %20 = load %struct.image_params*, %struct.image_params** %5, align 8
  %21 = getelementptr inbounds %struct.image_params, %struct.image_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.thread*, %struct.thread** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode* %19, i32 %22, %struct.thread* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @EAUTH, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %124

34:                                               ; preds = %28, %18
  %35 = load %struct.vnode*, %struct.vnode** %8, align 8
  %36 = call i32 @mac_veriexec_get_fingerprint_status(%struct.vnode* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %117 [
    i32 132, label %38
    i32 134, label %43
    i32 128, label %57
    i32 133, label %59
    i32 129, label %78
    i32 130, label %91
    i32 131, label %104
  ]

38:                                               ; preds = %34
  %39 = load %struct.image_params*, %struct.image_params** %5, align 8
  %40 = load %struct.thread*, %struct.thread** %7, align 8
  %41 = call i32 @identify_error(%struct.image_params* %39, %struct.thread* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %9, align 4
  br label %122

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %51 = call i64 @mac_veriexec_in_state(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %46
  %54 = load i32, i32* @EPERM, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %43
  br label %122

57:                                               ; preds = %34
  %58 = call i32 @VERIEXEC_DEBUG(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %122

59:                                               ; preds = %34
  %60 = load %struct.image_params*, %struct.image_params** %5, align 8
  %61 = getelementptr inbounds %struct.image_params, %struct.image_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load %struct.image_params*, %struct.image_params** %5, align 8
  %66 = load %struct.thread*, %struct.thread** %7, align 8
  %67 = call i32 @identify_error(%struct.image_params* %65, %struct.thread* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %72 = call i64 @mac_veriexec_in_state(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %64
  %75 = load i32, i32* @EPERM, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %59
  br label %122

78:                                               ; preds = %34
  %79 = load %struct.image_params*, %struct.image_params** %5, align 8
  %80 = load %struct.thread*, %struct.thread** %7, align 8
  %81 = call i32 @identify_error(%struct.image_params* %79, %struct.thread* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %86 = call i64 @mac_veriexec_in_state(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %78
  %89 = load i32, i32* @EAUTH, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %84
  br label %122

91:                                               ; preds = %34
  %92 = load %struct.image_params*, %struct.image_params** %5, align 8
  %93 = load %struct.thread*, %struct.thread** %7, align 8
  %94 = call i32 @identify_error(%struct.image_params* %92, %struct.thread* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %99 = call i64 @mac_veriexec_in_state(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %91
  %102 = load i32, i32* @EAUTH, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %97
  br label %122

104:                                              ; preds = %34
  %105 = load %struct.image_params*, %struct.image_params** %5, align 8
  %106 = load %struct.thread*, %struct.thread** %7, align 8
  %107 = call i32 @identify_error(%struct.image_params* %105, %struct.thread* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %112 = call i64 @mac_veriexec_in_state(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %104
  %115 = load i32, i32* @EAUTH, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %110
  br label %122

117:                                              ; preds = %34
  %118 = load %struct.image_params*, %struct.image_params** %5, align 8
  %119 = load %struct.thread*, %struct.thread** %7, align 8
  %120 = call i32 @identify_error(%struct.image_params* %118, %struct.thread* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @EPERM, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %116, %103, %90, %77, %57, %56, %38
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %32, %17
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @mac_veriexec_in_state(i32) #1

declare dso_local i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @mac_veriexec_get_fingerprint_status(%struct.vnode*) #1

declare dso_local i32 @identify_error(%struct.image_params*, %struct.thread*, i8*) #1

declare dso_local i32 @VERIEXEC_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
