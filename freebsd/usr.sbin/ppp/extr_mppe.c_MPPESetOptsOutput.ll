; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPESetOptsOutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPESetOptsOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.fsm_opt = type { i32 }
%struct.ccp_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MPPE_MasterKeyValid = common dso_local global i32 0, align 4
@MODE_NAK = common dso_local global i32 0, align 4
@MPPE_OPT_BITMASK = common dso_local global i32 0, align 4
@MPPE_OPT_128BIT = common dso_local global i32 0, align 4
@MPPE_ANYSTATE = common dso_local global i64 0, align 8
@MPPE_OPT_STATELESS = common dso_local global i32 0, align 4
@MODE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle*, %struct.fsm_opt*, %struct.ccp_config*)* @MPPESetOptsOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPPESetOptsOutput(%struct.bundle* %0, %struct.fsm_opt* %1, %struct.ccp_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.fsm_opt*, align 8
  %7 = alloca %struct.ccp_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.fsm_opt* %1, %struct.fsm_opt** %6, align 8
  store %struct.ccp_config* %2, %struct.ccp_config** %7, align 8
  %10 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %11 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ua_ntohl(i32 %12, i32* %9)
  %14 = load i32, i32* @MPPE_MasterKeyValid, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @MODE_NAK, align 4
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.bundle*, %struct.bundle** %5, align 8
  %20 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %21 = call i32 @MPPE_ConfigVal(%struct.bundle* %19, %struct.ccp_config* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %23 = getelementptr inbounds %struct.ccp_config, %struct.ccp_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @MPPE_OPT_128BIT, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %27
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.ccp_config*, %struct.ccp_config** %7, align 8
  %48 = getelementptr inbounds %struct.ccp_config, %struct.ccp_config* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MPPE_ANYSTATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %53, %46
  %64 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %65 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ua_htonl(i32* %8, i32 %66)
  %68 = load i32, i32* @MODE_ACK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ua_ntohl(i32, i32*) #1

declare dso_local i32 @MPPE_ConfigVal(%struct.bundle*, %struct.ccp_config*) #1

declare dso_local i32 @ua_htonl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
