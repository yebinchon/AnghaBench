; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_matched_hdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_matched_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpt_hdr = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpt_hdr*, %struct.gpt_hdr*)* @gpt_matched_hdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpt_matched_hdrs(%struct.gpt_hdr* %0, %struct.gpt_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpt_hdr*, align 8
  %5 = alloca %struct.gpt_hdr*, align 8
  store %struct.gpt_hdr* %0, %struct.gpt_hdr** %4, align 8
  store %struct.gpt_hdr* %1, %struct.gpt_hdr** %5, align 8
  %6 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %7 = icmp eq %struct.gpt_hdr* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %10 = icmp eq %struct.gpt_hdr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %80

12:                                               ; preds = %8
  %13 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %13, i32 0, i32 7
  %15 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %15, i32 0, i32 7
  %17 = call i32 @EQUUID(i32* %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %80

20:                                               ; preds = %12
  %21 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %20
  %29 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %28
  %37 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %44
  %53 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %62 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %65 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  %70 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.gpt_hdr*, %struct.gpt_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br label %76

76:                                               ; preds = %68, %60, %52, %44, %36, %28, %20
  %77 = phi i1 [ false, %60 ], [ false, %52 ], [ false, %44 ], [ false, %36 ], [ false, %28 ], [ false, %20 ], [ %75, %68 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %19, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @EQUUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
