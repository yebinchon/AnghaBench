; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_setscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_setscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }
%struct.ifnet = type { i32, i32 }
%struct.scope6_id = type { i32* }
%struct.epoch_tracker = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_setscope(%struct.in6_addr* %0, %struct.ifnet* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scope6_id*, align 8
  %11 = alloca %struct.epoch_tracker, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %13 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_LOOPBACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %15
  br label %68

25:                                               ; preds = %3
  %26 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %27 = call i32 @in6_addrscope(%struct.in6_addr* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31, %25
  %36 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 65535
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %43 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  br label %67

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NET_EPOCH_ENTER(i32 %52)
  %54 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %55 = call %struct.scope6_id* @SID(%struct.ifnet* %54)
  store %struct.scope6_id* %55, %struct.scope6_id** %10, align 8
  %56 = load %struct.scope6_id*, %struct.scope6_id** %10, align 8
  %57 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NET_EPOCH_EXIT(i32 %64)
  br label %66

66:                                               ; preds = %50, %46
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

declare dso_local i32 @in6_addrscope(%struct.in6_addr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
