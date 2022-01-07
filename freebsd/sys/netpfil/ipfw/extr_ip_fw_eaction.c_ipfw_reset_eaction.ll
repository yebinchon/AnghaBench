; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_reset_eaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_reset_eaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@O_EXTERNAL_ACTION = common dso_local global i64 0, align 8
@O_EXTERNAL_INSTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"truncate rule %d: len %u -> %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_reset_eaction(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.ip_fw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %16 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %15)
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %18 = call i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain* %17)
  %19 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %20 = call %struct.TYPE_4__* @ipfw_get_action(%struct.ip_fw* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @O_EXTERNAL_ACTION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %5
  store i32 0, i32* %6, align 4
  br label %114

33:                                               ; preds = %26
  %34 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %35 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %38 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = ptrtoint %struct.TYPE_4__* %41 to i64
  %44 = ptrtoint %struct.TYPE_4__* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 16
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %110

50:                                               ; preds = %33
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = call i32 @F_LEN(%struct.TYPE_4__* %51)
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @MPASS(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 1
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %13, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @O_EXTERNAL_INSTANCE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %114

73:                                               ; preds = %66, %63, %50
  %74 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %75 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %78 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %81 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = call i32 @F_LEN(%struct.TYPE_4__* %83)
  %85 = sub nsw i32 %82, %84
  %86 = call i32 @EACTION_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = call i32 @F_LEN(%struct.TYPE_4__* %87)
  %89 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %90 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = bitcast %struct.TYPE_4__* %93 to i32*
  %95 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %96 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = bitcast %struct.TYPE_4__* %97 to i32*
  %99 = ptrtoint i32* %94 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %104 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 %102, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @MPASS(i32 %108)
  br label %110

110:                                              ; preds = %73, %33
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %72, %32
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.TYPE_4__* @ipfw_get_action(%struct.ip_fw*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @F_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @EACTION_DEBUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
