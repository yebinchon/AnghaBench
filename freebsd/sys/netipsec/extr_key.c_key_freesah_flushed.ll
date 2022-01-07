; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_freesah_flushed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_freesah_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead_queue = type { i32 }
%struct.secashead = type { %struct.secashead_queue, %struct.secashead_queue }
%struct.secasvar = type { %struct.secashead_queue, %struct.secashead_queue }

@chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secashead_queue*)* @key_freesah_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_freesah_flushed(%struct.secashead_queue* %0) #0 {
  %2 = alloca %struct.secashead_queue*, align 8
  %3 = alloca %struct.secashead*, align 8
  %4 = alloca %struct.secashead*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca %struct.secasvar*, align 8
  store %struct.secashead_queue* %0, %struct.secashead_queue** %2, align 8
  %7 = load %struct.secashead_queue*, %struct.secashead_queue** %2, align 8
  %8 = call %struct.secasvar* @TAILQ_FIRST(%struct.secashead_queue* %7)
  %9 = bitcast %struct.secasvar* %8 to %struct.secashead*
  store %struct.secashead* %9, %struct.secashead** %3, align 8
  br label %10

10:                                               ; preds = %53, %1
  %11 = load %struct.secashead*, %struct.secashead** %3, align 8
  %12 = icmp ne %struct.secashead* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %10
  %14 = load %struct.secashead*, %struct.secashead** %3, align 8
  %15 = getelementptr inbounds %struct.secashead, %struct.secashead* %14, i32 0, i32 1
  %16 = call %struct.secasvar* @TAILQ_FIRST(%struct.secashead_queue* %15)
  store %struct.secasvar* %16, %struct.secasvar** %5, align 8
  br label %17

17:                                               ; preds = %20, %13
  %18 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %19 = icmp ne %struct.secasvar* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %22 = load i32, i32* @chain, align 4
  %23 = call %struct.secasvar* @TAILQ_NEXT(%struct.secasvar* %21, i32 %22)
  store %struct.secasvar* %23, %struct.secasvar** %6, align 8
  %24 = load %struct.secashead*, %struct.secashead** %3, align 8
  %25 = getelementptr inbounds %struct.secashead, %struct.secashead* %24, i32 0, i32 1
  %26 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %27 = load i32, i32* @chain, align 4
  %28 = call i32 @TAILQ_REMOVE(%struct.secashead_queue* %25, %struct.secasvar* %26, i32 %27)
  %29 = call i32 @key_freesav(%struct.secasvar** %5)
  %30 = bitcast %struct.secashead** %3 to %struct.secasvar**
  %31 = call i32 @key_freesah(%struct.secasvar** %30)
  %32 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  store %struct.secasvar* %32, %struct.secasvar** %5, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.secashead*, %struct.secashead** %3, align 8
  %35 = getelementptr inbounds %struct.secashead, %struct.secashead* %34, i32 0, i32 0
  %36 = call %struct.secasvar* @TAILQ_FIRST(%struct.secashead_queue* %35)
  store %struct.secasvar* %36, %struct.secasvar** %5, align 8
  br label %37

37:                                               ; preds = %40, %33
  %38 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %39 = icmp ne %struct.secasvar* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %42 = load i32, i32* @chain, align 4
  %43 = call %struct.secasvar* @TAILQ_NEXT(%struct.secasvar* %41, i32 %42)
  store %struct.secasvar* %43, %struct.secasvar** %6, align 8
  %44 = load %struct.secashead*, %struct.secashead** %3, align 8
  %45 = getelementptr inbounds %struct.secashead, %struct.secashead* %44, i32 0, i32 0
  %46 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %47 = load i32, i32* @chain, align 4
  %48 = call i32 @TAILQ_REMOVE(%struct.secashead_queue* %45, %struct.secasvar* %46, i32 %47)
  %49 = call i32 @key_freesav(%struct.secasvar** %5)
  %50 = bitcast %struct.secashead** %3 to %struct.secasvar**
  %51 = call i32 @key_freesah(%struct.secasvar** %50)
  %52 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  store %struct.secasvar* %52, %struct.secasvar** %5, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.secashead*, %struct.secashead** %3, align 8
  %55 = bitcast %struct.secashead* %54 to %struct.secasvar*
  %56 = load i32, i32* @chain, align 4
  %57 = call %struct.secasvar* @TAILQ_NEXT(%struct.secasvar* %55, i32 %56)
  %58 = bitcast %struct.secasvar* %57 to %struct.secashead*
  store %struct.secashead* %58, %struct.secashead** %4, align 8
  %59 = bitcast %struct.secashead** %3 to %struct.secasvar**
  %60 = call i32 @key_freesah(%struct.secasvar** %59)
  %61 = load %struct.secashead*, %struct.secashead** %4, align 8
  store %struct.secashead* %61, %struct.secashead** %3, align 8
  br label %10

62:                                               ; preds = %10
  ret void
}

declare dso_local %struct.secasvar* @TAILQ_FIRST(%struct.secashead_queue*) #1

declare dso_local %struct.secasvar* @TAILQ_NEXT(%struct.secasvar*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.secashead_queue*, %struct.secasvar*, i32) #1

declare dso_local i32 @key_freesav(%struct.secasvar**) #1

declare dso_local i32 @key_freesah(%struct.secasvar**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
