; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_SendConfigReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_SendConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, i32 }
%struct.physical = type { i32 }
%struct.ipv6cp = type { i32 }
%struct.fsm_opt = type { i32 }

@IPV6CP_IFIDLEN = common dso_local global i32 0, align 4
@TY_TOKEN = common dso_local global i32 0, align 4
@CODE_CONFIGREQ = common dso_local global i32 0, align 4
@MB_IPV6CPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @ipv6cp_SendConfigReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6cp_SendConfigReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ipv6cp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fsm_opt*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %8 = load %struct.fsm*, %struct.fsm** %2, align 8
  %9 = getelementptr inbounds %struct.fsm, %struct.fsm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.physical* @link2physical(i32 %10)
  store %struct.physical* %11, %struct.physical** %3, align 8
  %12 = load %struct.fsm*, %struct.fsm** %2, align 8
  %13 = call %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm* %12)
  store %struct.ipv6cp* %13, %struct.ipv6cp** %4, align 8
  %14 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = bitcast i32* %18 to %struct.fsm_opt*
  store %struct.fsm_opt* %19, %struct.fsm_opt** %7, align 8
  %20 = load %struct.physical*, %struct.physical** %3, align 8
  %21 = icmp ne %struct.physical* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.physical*, %struct.physical** %3, align 8
  %24 = call i32 @physical_IsSync(%struct.physical* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %1
  %27 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %28 = load i32, i32* @TY_TOKEN, align 4
  %29 = call i32 @REJECTED(%struct.ipv6cp* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %33 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %36 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load i32, i32* @TY_TOKEN, align 4
  %41 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %42 = add nsw i32 %41, 2
  %43 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %44 = call i32 @INC_FSM_OPT(i32 %40, i32 %42, %struct.fsm_opt* %43)
  br label %45

45:                                               ; preds = %31, %26
  %46 = load %struct.fsm*, %struct.fsm** %2, align 8
  %47 = load i32, i32* @CODE_CONFIGREQ, align 4
  %48 = load %struct.fsm*, %struct.fsm** %2, align 8
  %49 = getelementptr inbounds %struct.fsm, %struct.fsm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %52 = bitcast %struct.fsm_opt* %51 to i32*
  %53 = ptrtoint i32* %52 to i64
  %54 = ptrtoint i32* %18 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @MB_IPV6CPOUT, align 4
  %59 = call i32 @fsm_Output(%struct.fsm* %46, i32 %47, i32 %50, i32* %18, i32 %57, i32 %58)
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @REJECTED(%struct.ipv6cp*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INC_FSM_OPT(i32, i32, %struct.fsm_opt*) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
