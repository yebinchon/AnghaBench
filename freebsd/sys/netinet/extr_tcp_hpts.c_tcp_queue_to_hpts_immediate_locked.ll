; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_queue_to_hpts_immediate_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_queue_to_hpts_immediate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i64, i64 }
%struct.tcp_hpts_entry = type { i64, i64, i8*, i64, i64, i32, i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.tcp_hpts_entry*, i32, i32)* @tcp_queue_to_hpts_immediate_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_queue_to_hpts_immediate_locked(%struct.inpcb* %0, %struct.tcp_hpts_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.tcp_hpts_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %struct.tcp_hpts_entry* %1, %struct.tcp_hpts_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %11 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %10)
  %12 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %4
  %17 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %20 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23, %16
  %29 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %30 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @hpts_tick(i32 %31, i32 1)
  %33 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %41 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %39, %28
  br label %66

46:                                               ; preds = %23
  %47 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %48 = bitcast %struct.inpcb* %47 to i8*
  %49 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %55 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %61 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %68 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %69 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %70 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @hpts_sane_pace_insert(%struct.tcp_hpts_entry* %67, %struct.inpcb* %68, i32* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %83 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %82, i32 0, i32 5
  store i32 1, i32* %83, align 8
  %84 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %85 = call i32 @tcp_wakehpts(%struct.tcp_hpts_entry* %84)
  br label %86

86:                                               ; preds = %81, %66
  br label %87

87:                                               ; preds = %86, %4
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i64 @hpts_tick(i32, i32) #1

declare dso_local i32 @hpts_sane_pace_insert(%struct.tcp_hpts_entry*, %struct.inpcb*, i32*, i32, i32) #1

declare dso_local i32 @tcp_wakehpts(%struct.tcp_hpts_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
