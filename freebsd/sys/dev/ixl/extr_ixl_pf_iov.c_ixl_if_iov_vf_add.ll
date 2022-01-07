; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_vf_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_vf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vf*, i32 }
%struct.ixl_vf = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ixl_pf* }

@QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@VF_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"num-queues\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mac-addr\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"allow-set-mac\00", align 1
@VF_FLAG_SET_MAC_CAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"mac-anti-spoof\00", align 1
@VF_FLAG_MAC_ANTI_SPOOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"allow-promisc\00", align 1
@VF_FLAG_PROMISC_CAP = common dso_local global i32 0, align 4
@VF_FLAG_VLAN_CAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"vf%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_if_iov_vf_add(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixl_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ixl_vf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.ixl_pf* @iflib_get_softc(i32 %16)
  store %struct.ixl_pf* %17, %struct.ixl_pf** %7, align 8
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @QUEUE_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %26 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %25, i32 0, i32 0
  %27 = load %struct.ixl_vf*, %struct.ixl_vf** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %27, i64 %28
  store %struct.ixl_vf* %29, %struct.ixl_vf** %11, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %32 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %34 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %35 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.ixl_pf* %33, %struct.ixl_pf** %36, align 8
  %37 = load i32, i32* @VF_FLAG_ENABLED, align 4
  %38 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %39 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %41 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @SLIST_INIT(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @nvlist_get_number(i32* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %15, align 4
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %47 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ixl_vf_reserve_queues(%struct.ixl_pf* %46, %struct.ixl_vf* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  br label %118

53:                                               ; preds = %3
  %54 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %55 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %56 = call i32 @ixl_vf_setup_vsi(%struct.ixl_pf* %54, %struct.ixl_vf* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %118

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @nvlist_exists_binary(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = call i8* @nvlist_get_binary(i32* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %13)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %69 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %72 = call i32 @bcopy(i8* %67, i32 %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @nvlist_get_bool(i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load i32, i32* @VF_FLAG_SET_MAC_CAP, align 4
  %78 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %79 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %64
  br label %89

83:                                               ; preds = %60
  %84 = load i32, i32* @VF_FLAG_SET_MAC_CAP, align 4
  %85 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %86 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %82
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @nvlist_get_bool(i32* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @VF_FLAG_MAC_ANTI_SPOOF, align 4
  %95 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %96 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i32*, i32** %6, align 8
  %101 = call i64 @nvlist_get_bool(i32* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* @VF_FLAG_PROMISC_CAP, align 4
  %105 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %106 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %99
  %110 = load i32, i32* @VF_FLAG_VLAN_CAP, align 4
  %111 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %112 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %116 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %117 = call i32 @ixl_reset_vf(%struct.ixl_pf* %115, %struct.ixl_vf* %116)
  br label %118

118:                                              ; preds = %109, %59, %52
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = trunc i64 %22 to i32
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @snprintf(i8* %24, i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %127 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %126, i32 0, i32 2
  %128 = load %struct.ixl_vf*, %struct.ixl_vf** %11, align 8
  %129 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %128, i32 0, i32 1
  %130 = call i32 @ixl_add_vsi_sysctls(i32 %125, %struct.TYPE_2__* %127, i32* %129, i8* %24)
  br label %131

131:                                              ; preds = %121, %118
  %132 = load i32, i32* %14, align 4
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i32 %132
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @ixl_vf_reserve_queues(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

declare dso_local i32 @ixl_vf_setup_vsi(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i64 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i64 @nvlist_get_bool(i32*, i8*) #1

declare dso_local i32 @ixl_reset_vf(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @ixl_add_vsi_sysctls(i32, %struct.TYPE_2__*, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
