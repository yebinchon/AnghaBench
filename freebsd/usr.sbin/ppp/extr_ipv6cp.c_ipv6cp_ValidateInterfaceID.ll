; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_ValidateInterfaceID.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_ValidateInterfaceID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6cp = type { i32****, i32**** }
%struct.fsm_decode = type { i32 }
%struct.fsm_opt = type { i32***, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IPV6CP_IFIDLEN = common dso_local global i32 0, align 4
@TY_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6cp*, i32***, %struct.fsm_decode*)* @ipv6cp_ValidateInterfaceID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6cp_ValidateInterfaceID(%struct.ipv6cp* %0, i32*** %1, %struct.fsm_decode* %2) #0 {
  %4 = alloca %struct.ipv6cp*, align 8
  %5 = alloca i32***, align 8
  %6 = alloca %struct.fsm_decode*, align 8
  %7 = alloca %struct.fsm_opt, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.ipv6cp* %0, %struct.ipv6cp** %4, align 8
  store i32*** %1, i32**** %5, align 8
  store %struct.fsm_decode* %2, %struct.fsm_decode** %6, align 8
  %10 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32**, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %15 = call i32 @memset(i32*** %13, i32 0, i32 %14)
  %16 = load i32***, i32**** %5, align 8
  %17 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %18 = call i64 @memcmp(i32*** %16, i32*** %13, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load i32***, i32**** %5, align 8
  %22 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %23 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %22, i32 0, i32 1
  %24 = load i32****, i32***** %23, align 8
  %25 = bitcast i32**** %24 to i32***
  %26 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %27 = call i64 @memcmp(i32*** %21, i32*** %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %31 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %30, i32 0, i32 0
  %32 = load i32****, i32***** %31, align 8
  %33 = bitcast i32**** %32 to i32**
  %34 = load i32***, i32**** %5, align 8
  %35 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %36 = call i32 @memcpy(i32** %33, i32*** %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %20, %3
  %38 = load i32, i32* @TY_TOKEN, align 4
  %39 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %42 = add nsw i32 %41, 2
  %43 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %7, i32 0, i32 0
  %46 = load i32***, i32**** %45, align 8
  %47 = bitcast i32*** %46 to i32**
  %48 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %49 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %48, i32 0, i32 0
  %50 = bitcast i32***** %49 to i32***
  %51 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %52 = call i32 @memcpy(i32** %47, i32*** %50, i32 %51)
  %53 = load i32***, i32**** %5, align 8
  %54 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %55 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %54, i32 0, i32 0
  %56 = load i32****, i32***** %55, align 8
  %57 = bitcast i32**** %56 to i32***
  %58 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %59 = call i64 @memcmp(i32*** %53, i32*** %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %37
  %62 = load %struct.fsm_decode*, %struct.fsm_decode** %6, align 8
  %63 = call i32 @fsm_ack(%struct.fsm_decode* %62, %struct.fsm_opt* %7)
  br label %67

64:                                               ; preds = %37
  %65 = load %struct.fsm_decode*, %struct.fsm_decode** %6, align 8
  %66 = call i32 @fsm_nak(%struct.fsm_decode* %65, %struct.fsm_opt* %7)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32***, i32, i32) #2

declare dso_local i64 @memcmp(i32***, i32***, i32) #2

declare dso_local i32 @memcpy(i32**, i32***, i32) #2

declare dso_local i32 @fsm_ack(%struct.fsm_decode*, %struct.fsm_opt*) #2

declare dso_local i32 @fsm_nak(%struct.fsm_decode*, %struct.fsm_opt*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
