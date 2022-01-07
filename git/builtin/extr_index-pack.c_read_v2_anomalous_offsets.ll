; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_read_v2_anomalous_offsets.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_read_v2_anomalous_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32, i64 }
%struct.pack_idx_option = type { i64, i8**, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@cmp_uint32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_git*, %struct.pack_idx_option*)* @read_v2_anomalous_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_v2_anomalous_offsets(%struct.packed_git* %0, %struct.pack_idx_option* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.pack_idx_option*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store %struct.pack_idx_option* %1, %struct.pack_idx_option** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %17 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = getelementptr inbounds i32, i32* %20, i64 256
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %36 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %104, %2
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %43 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ntohl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, -2147483648
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %104

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 2147483647
  store i32 %60, i32* %9, align 4
  %61 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @check_pack_index_ptr(%struct.packed_git* %61, i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %104

76:                                               ; preds = %58
  %77 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %78 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %81 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %85 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ALLOC_GROW(i8** %79, i64 %83, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @ntohl(i32 %94)
  %96 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %97 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %100 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %95, i8** %103, align 8
  br label %104

104:                                              ; preds = %76, %75, %57
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %40

107:                                              ; preds = %40
  %108 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %109 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.pack_idx_option*, %struct.pack_idx_option** %4, align 8
  %112 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @cmp_uint32, align 4
  %115 = call i32 @QSORT(i8** %110, i64 %113, i32 %114)
  ret void
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @check_pack_index_ptr(%struct.packed_git*, i32*) #1

declare dso_local i32 @ALLOC_GROW(i8**, i64, i32) #1

declare dso_local i32 @QSORT(i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
