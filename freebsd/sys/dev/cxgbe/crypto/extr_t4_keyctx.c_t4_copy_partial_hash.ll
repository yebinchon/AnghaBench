; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_keyctx.c_t4_copy_partial_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_keyctx.c_t4_copy_partial_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.authctx = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32* }

@SHA1_HASH_LEN = common dso_local global i32 0, align 4
@SHA2_256_HASH_LEN = common dso_local global i32 0, align 4
@SHA2_512_HASH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_copy_partial_hash(i32 %0, %union.authctx* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.authctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %union.authctx* %1, %union.authctx** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %136 [
    i32 137, label %15
    i32 136, label %15
    i32 135, label %40
    i32 134, label %40
    i32 133, label %64
    i32 132, label %64
    i32 131, label %88
    i32 130, label %88
    i32 129, label %112
    i32 128, label %112
  ]

15:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SHA1_HASH_LEN, align 4
  %19 = sdiv i32 %18, 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %union.authctx*, %union.authctx** %5, align 8
  %23 = bitcast %union.authctx* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htobe32(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %16

39:                                               ; preds = %16
  br label %136

40:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SHA2_256_HASH_LEN, align 4
  %44 = sdiv i32 %43, 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %union.authctx*, %union.authctx** %5, align 8
  %48 = bitcast %union.authctx* %47 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @htobe32(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %41

63:                                               ; preds = %41
  br label %136

64:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @SHA2_256_HASH_LEN, align 4
  %68 = sdiv i32 %67, 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %union.authctx*, %union.authctx** %5, align 8
  %72 = bitcast %union.authctx* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htobe32(i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %65

87:                                               ; preds = %65
  br label %136

88:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  %92 = sdiv i32 %91, 8
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %union.authctx*, %union.authctx** %5, align 8
  %96 = bitcast %union.authctx* %95 to %struct.TYPE_11__*
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @htobe64(i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %89

111:                                              ; preds = %89
  br label %136

112:                                              ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %132, %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  %116 = sdiv i32 %115, 8
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %union.authctx*, %union.authctx** %5, align 8
  %120 = bitcast %union.authctx* %119 to %struct.TYPE_12__*
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @htobe64(i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %113

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %3, %135, %111, %87, %63, %39
  ret void
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
