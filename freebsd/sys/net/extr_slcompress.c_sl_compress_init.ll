; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_slcompress.c_sl_compress_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_slcompress.c_sl_compress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slcompress = type { i32, i32, i32, %struct.cstate*, i64, %struct.cstate* }
%struct.cstate = type { i64, %struct.cstate* }

@MAX_STATES = common dso_local global i32 0, align 4
@SLF_TOSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sl_compress_init(%struct.slcompress* %0, i32 %1) #0 {
  %3 = alloca %struct.slcompress*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.cstate*, align 8
  store %struct.slcompress* %0, %struct.slcompress** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %8 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %7, i32 0, i32 5
  %9 = load %struct.cstate*, %struct.cstate** %8, align 8
  store %struct.cstate* %9, %struct.cstate** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX_STATES, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %16 = bitcast %struct.slcompress* %15 to i8*
  %17 = call i32 @bzero(i8* %16, i32 40)
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %20 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %19, i32 0, i32 5
  %21 = load %struct.cstate*, %struct.cstate** %20, align 8
  %22 = bitcast %struct.cstate* %21 to i8*
  %23 = call i32 @bzero(i8* %22, i32 8)
  %24 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %25 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @bzero(i8* %27, i32 8)
  br label %29

29:                                               ; preds = %18, %12
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %49, %29
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.cstate*, %struct.cstate** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.cstate, %struct.cstate* %37, i64 %38
  %40 = getelementptr inbounds %struct.cstate, %struct.cstate* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.cstate*, %struct.cstate** %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds %struct.cstate, %struct.cstate* %41, i64 %43
  %45 = load %struct.cstate*, %struct.cstate** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.cstate, %struct.cstate* %45, i64 %46
  %48 = getelementptr inbounds %struct.cstate, %struct.cstate* %47, i32 0, i32 1
  store %struct.cstate* %44, %struct.cstate** %48, align 8
  br label %49

49:                                               ; preds = %35
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %5, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.cstate*, %struct.cstate** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cstate, %struct.cstate* %53, i64 %55
  %57 = load %struct.cstate*, %struct.cstate** %6, align 8
  %58 = getelementptr inbounds %struct.cstate, %struct.cstate* %57, i64 0
  %59 = getelementptr inbounds %struct.cstate, %struct.cstate* %58, i32 0, i32 1
  store %struct.cstate* %56, %struct.cstate** %59, align 8
  %60 = load %struct.cstate*, %struct.cstate** %6, align 8
  %61 = getelementptr inbounds %struct.cstate, %struct.cstate* %60, i64 0
  %62 = getelementptr inbounds %struct.cstate, %struct.cstate* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.cstate*, %struct.cstate** %6, align 8
  %64 = getelementptr inbounds %struct.cstate, %struct.cstate* %63, i64 0
  %65 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %66 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %65, i32 0, i32 3
  store %struct.cstate* %64, %struct.cstate** %66, align 8
  %67 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %68 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %67, i32 0, i32 0
  store i32 255, i32* %68, align 8
  %69 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %70 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %69, i32 0, i32 1
  store i32 255, i32* %70, align 4
  %71 = load i32, i32* @SLF_TOSS, align 4
  %72 = load %struct.slcompress*, %struct.slcompress** %3, align 8
  %73 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
