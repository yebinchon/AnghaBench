; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_debugnet_inet.c_debugnet_arp_gw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_debugnet_inet.c_debugnet_arp_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugnet_pcb = type { i64, i64, i64 }

@debugnet_arp_nretries = common dso_local global i32 0, align 4
@debugnet_npolls = common dso_local global i32 0, align 4
@DN_STATE_HAVE_GW_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"(ARP retry)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0AFailed to ARP server\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c", trying to reach gateway...\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0AFailed to ARP gateway.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debugnet_arp_gw(%struct.debugnet_pcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.debugnet_pcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.debugnet_pcb* %0, %struct.debugnet_pcb** %3, align 8
  %8 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %9 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %76, %1
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @debugnet_arp_nretries, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @debugnet_send_arp(%struct.debugnet_pcb* %17, i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @debugnet_npolls, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %31 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DN_STATE_HAVE_GW_MAC, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %39 = call i32 @debugnet_network_poll(%struct.debugnet_pcb* %38)
  %40 = call i32 @DELAY(i32 500)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %25

44:                                               ; preds = %35
  %45 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %46 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DN_STATE_HAVE_GW_MAC, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %56

51:                                               ; preds = %44
  %52 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %12

56:                                               ; preds = %50, %12
  %57 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %58 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DN_STATE_HAVE_GW_MAC, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %88

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %66 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %72 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @INADDR_ANY, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %3, align 8
  %79 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  br label %11

81:                                               ; preds = %69
  %82 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81
  br label %86

84:                                               ; preds = %63
  %85 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %62, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @debugnet_send_arp(%struct.debugnet_pcb*, i64) #1

declare dso_local i32 @debugnet_network_poll(%struct.debugnet_pcb*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
