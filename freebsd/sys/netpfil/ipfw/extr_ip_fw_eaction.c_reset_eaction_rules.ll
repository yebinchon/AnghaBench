; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_reset_eaction_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_reset_eaction_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32* }
%struct.named_object = type { i64, i32 }

@IPFW_TLV_EACTION = common dso_local global i32 0, align 4
@default_eaction_typename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Default external action handler is not found\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Wrong eaction_id\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Going to replace id %u with %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, i64, i64, i32)* @reset_eaction_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_eaction_rules(%struct.ip_fw_chain* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.named_object*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %11)
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %14 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %13)
  %15 = load i32, i32* @IPFW_TLV_EACTION, align 4
  %16 = load i32, i32* @default_eaction_typename, align 4
  %17 = call %struct.named_object* @ipfw_objhash_lookup_name_type(i32 %14, i32 0, i32 %15, i32 %16)
  store %struct.named_object* %17, %struct.named_object** %9, align 8
  %18 = load %struct.named_object*, %struct.named_object** %9, align 8
  %19 = icmp eq %struct.named_object* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.named_object*, %struct.named_object** %9, align 8
  %25 = getelementptr inbounds %struct.named_object, %struct.named_object* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.named_object*, %struct.named_object** %9, align 8
  %33 = getelementptr inbounds %struct.named_object, %struct.named_object* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @EACTION_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %37 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %44 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %49 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %50 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.named_object*, %struct.named_object** %9, align 8
  %58 = getelementptr inbounds %struct.named_object, %struct.named_object* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @ipfw_reset_eaction(%struct.ip_fw_chain* %48, i32 %55, i64 %56, i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.named_object*, %struct.named_object** %9, align 8
  %65 = getelementptr inbounds %struct.named_object, %struct.named_object* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %41

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %30
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.named_object*, %struct.named_object** %9, align 8
  %77 = getelementptr inbounds %struct.named_object, %struct.named_object* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ipfw_dyn_reset_eaction(%struct.ip_fw_chain* %74, i64 %75, i64 %78, i64 %79)
  %81 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %82 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %81)
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name_type(i32, i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @EACTION_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_reset_eaction(%struct.ip_fw_chain*, i32, i64, i64, i64) #1

declare dso_local i32 @ipfw_dyn_reset_eaction(%struct.ip_fw_chain*, i64, i64, i64) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
