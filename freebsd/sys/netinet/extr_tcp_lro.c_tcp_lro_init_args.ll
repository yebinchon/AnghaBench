; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_init_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_init_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { i32, i32, i32, %struct.lro_mbuf_sort*, i32*, i32, i32, %struct.ifnet*, i32, i32, i64, i64, i64, i64 }
%struct.lro_mbuf_sort = type { i32 }
%struct.ifnet = type { i32 }
%struct.lro_entry = type { i32 }

@TCP_LRO_ACKCNT_MAX = common dso_local global i32 0, align 4
@TCP_LRO_LENGTH_MAX = common dso_local global i32 0, align 4
@M_LRO = common dso_local global i32 0, align 4
@HASH_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_lro_init_args(%struct.lro_ctrl* %0, %struct.ifnet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lro_ctrl*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lro_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %17 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %19 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %21 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %27 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TCP_LRO_ACKCNT_MAX, align 4
  %29 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %30 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TCP_LRO_LENGTH_MAX, align 4
  %32 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %33 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %35 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %35, i32 0, i32 7
  store %struct.ifnet* %34, %struct.ifnet** %36, align 8
  %37 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %37, i32 0, i32 2
  %39 = call i32 @LIST_INIT(i32* %38)
  %40 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %41 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %40, i32 0, i32 6
  %42 = call i32 @LIST_INIT(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @M_LRO, align 4
  %53 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %54 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %53, i32 0, i32 5
  %55 = load i32, i32* @HASH_NOWAIT, align 4
  %56 = call i32* @phashinit_flags(i32 %51, i32 %52, i32* %54, i32 %55)
  %57 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %58 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %60 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %65 = call i32 @memset(%struct.lro_ctrl* %64, i32 0, i32 88)
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %5, align 4
  br label %122

67:                                               ; preds = %50
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 %70, %73
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* @M_LRO, align 4
  %77 = load i32, i32* @M_NOWAIT, align 4
  %78 = load i32, i32* @M_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call i64 @malloc(i64 %75, i32 %76, i32 %79)
  %81 = inttoptr i64 %80 to %struct.lro_mbuf_sort*
  %82 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %83 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %82, i32 0, i32 3
  store %struct.lro_mbuf_sort* %81, %struct.lro_mbuf_sort** %83, align 8
  %84 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %85 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %84, i32 0, i32 3
  %86 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %85, align 8
  %87 = icmp eq %struct.lro_mbuf_sort* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %67
  %89 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %90 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @M_LRO, align 4
  %93 = call i32 @free(i32* %91, i32 %92)
  %94 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %95 = call i32 @memset(%struct.lro_ctrl* %94, i32 0, i32 88)
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %5, align 4
  br label %122

97:                                               ; preds = %67
  %98 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %99 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %98, i32 0, i32 3
  %100 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %100, i64 %102
  %104 = bitcast %struct.lro_mbuf_sort* %103 to %struct.lro_entry*
  store %struct.lro_entry* %104, %struct.lro_entry** %10, align 8
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %118, %97
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load %struct.lro_ctrl*, %struct.lro_ctrl** %6, align 8
  %111 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %110, i32 0, i32 2
  %112 = load %struct.lro_entry*, %struct.lro_entry** %10, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %112, i64 %114
  %116 = load i32, i32* @next, align 4
  %117 = call i32 @LIST_INSERT_HEAD(i32* %111, %struct.lro_entry* %115, i32 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %105

121:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %88, %63
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32* @phashinit_flags(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.lro_ctrl*, i32, i32) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.lro_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
