; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_initpbank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_initpbank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }
%struct.pbank = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@__const.ds_initpbank.lv = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0], align 16
@__const.ds_initpbank.rv = private unnamed_addr constant [5 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0], align 16
@__const.ds_initpbank.e2 = private unnamed_addr constant [5 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0], align 16
@__const.ds_initpbank.e3 = private unnamed_addr constant [5 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1], align 16
@__const.ds_initpbank.speedinfo = private unnamed_addr constant [8 x %struct.anon] [%struct.anon { i32 100, i32 5701632, i32 891813888 }, %struct.anon { i32 2000, i32 111804416, i32 883359744 }, %struct.anon { i32 8000, i32 414318592, i32 838991872 }, %struct.anon { i32 11025, i32 546504704, i32 829882368 }, %struct.anon { i32 16000, i32 731512832, i32 825819136 }, %struct.anon { i32 22050, i32 899743744, i32 835256320 }, %struct.anon { i32 32000, i32 1051328512, i32 869269504 }, %struct.anon { i32 48000, i32 1073741824, i32 1073741824 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pbank*, i32, i32, i32, i32, i32, i32)* @ds_initpbank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_initpbank(%struct.pbank* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pbank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca [5 x i32], align 16
  %17 = alloca [5 x i32], align 16
  %18 = alloca [5 x i32], align 16
  %19 = alloca [5 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [8 x %struct.anon], align 16
  store %struct.pbank* %0, %struct.pbank** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = bitcast [5 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([5 x i32]* @__const.ds_initpbank.lv to i8*), i64 20, i1 false)
  %25 = bitcast [5 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([5 x i32]* @__const.ds_initpbank.rv to i8*), i64 20, i1 false)
  %26 = bitcast [5 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 20, i1 false)
  %27 = bitcast [5 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([5 x i32]* @__const.ds_initpbank.e2 to i8*), i64 20, i1 false)
  %28 = bitcast [5 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([5 x i32]* @__const.ds_initpbank.e3 to i8*), i64 20, i1 false)
  %29 = bitcast [8 x %struct.anon]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([8 x %struct.anon]* @__const.ds_initpbank.speedinfo to i8*), i64 96, i1 false)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load i32, i32* %20, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 65536, %40
  %42 = sdiv i32 %41, 48000
  store i32 %42, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %56, %7
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %44, 7
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %23, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i1 [ false, %43 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %21, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %21, align 4
  br label %43

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 65536, i32 0
  %64 = load %struct.pbank*, %struct.pbank** %8, align 8
  %65 = getelementptr inbounds %struct.pbank, %struct.pbank* %64, i32 0, i32 0
  store volatile i32 %63, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 -2147483648
  %70 = load %struct.pbank*, %struct.pbank** %8, align 8
  %71 = getelementptr inbounds %struct.pbank, %struct.pbank* %70, i32 0, i32 0
  %72 = load volatile i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store volatile i32 %73, i32* %71, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %59
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ true, %76 ], [ %81, %79 ]
  br label %84

84:                                               ; preds = %82, %59
  %85 = phi i1 [ false, %59 ], [ %83, %82 ]
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = load %struct.pbank*, %struct.pbank** %8, align 8
  %89 = getelementptr inbounds %struct.pbank, %struct.pbank* %88, i32 0, i32 0
  %90 = load volatile i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store volatile i32 %91, i32* %89, align 8
  %92 = load %struct.pbank*, %struct.pbank** %8, align 8
  %93 = getelementptr inbounds %struct.pbank, %struct.pbank* %92, i32 0, i32 29
  store volatile i64 0, i64* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.pbank*, %struct.pbank** %8, align 8
  %96 = getelementptr inbounds %struct.pbank, %struct.pbank* %95, i32 0, i32 28
  store volatile i32 %94, i32* %96, align 8
  %97 = load %struct.pbank*, %struct.pbank** %8, align 8
  %98 = getelementptr inbounds %struct.pbank, %struct.pbank* %97, i32 0, i32 27
  store volatile i64 0, i64* %98, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %20, align 4
  %101 = ashr i32 %99, %100
  %102 = load %struct.pbank*, %struct.pbank** %8, align 8
  %103 = getelementptr inbounds %struct.pbank, %struct.pbank* %102, i32 0, i32 1
  store volatile i32 %101, i32* %103, align 4
  %104 = load %struct.pbank*, %struct.pbank** %8, align 8
  %105 = getelementptr inbounds %struct.pbank, %struct.pbank* %104, i32 0, i32 26
  store volatile i64 0, i64* %105, align 8
  %106 = load %struct.pbank*, %struct.pbank** %8, align 8
  %107 = getelementptr inbounds %struct.pbank, %struct.pbank* %106, i32 0, i32 25
  store volatile i64 0, i64* %107, align 8
  %108 = load %struct.pbank*, %struct.pbank** %8, align 8
  %109 = getelementptr inbounds %struct.pbank, %struct.pbank* %108, i32 0, i32 24
  store volatile i64 0, i64* %109, align 8
  %110 = load %struct.pbank*, %struct.pbank** %8, align 8
  %111 = getelementptr inbounds %struct.pbank, %struct.pbank* %110, i32 0, i32 23
  store volatile i64 0, i64* %111, align 8
  %112 = load %struct.pbank*, %struct.pbank** %8, align 8
  %113 = getelementptr inbounds %struct.pbank, %struct.pbank* %112, i32 0, i32 22
  store volatile i64 0, i64* %113, align 8
  %114 = load %struct.pbank*, %struct.pbank** %8, align 8
  %115 = getelementptr inbounds %struct.pbank, %struct.pbank* %114, i32 0, i32 21
  store volatile i64 0, i64* %115, align 8
  %116 = load i32, i32* %22, align 4
  %117 = shl i32 %116, 12
  %118 = load %struct.pbank*, %struct.pbank** %8, align 8
  %119 = getelementptr inbounds %struct.pbank, %struct.pbank* %118, i32 0, i32 3
  store volatile i32 %117, i32* %119, align 4
  %120 = load %struct.pbank*, %struct.pbank** %8, align 8
  %121 = getelementptr inbounds %struct.pbank, %struct.pbank* %120, i32 0, i32 2
  store volatile i32 %117, i32* %121, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %23, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.pbank*, %struct.pbank** %8, align 8
  %128 = getelementptr inbounds %struct.pbank, %struct.pbank* %127, i32 0, i32 4
  store volatile i32 %126, i32* %128, align 8
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %23, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pbank*, %struct.pbank** %8, align 8
  %135 = getelementptr inbounds %struct.pbank, %struct.pbank* %134, i32 0, i32 6
  store volatile i32 %133, i32* %135, align 8
  %136 = load %struct.pbank*, %struct.pbank** %8, align 8
  %137 = getelementptr inbounds %struct.pbank, %struct.pbank* %136, i32 0, i32 5
  store volatile i32 %133, i32* %137, align 4
  %138 = load %struct.pbank*, %struct.pbank** %8, align 8
  %139 = getelementptr inbounds %struct.pbank, %struct.pbank* %138, i32 0, i32 19
  store volatile i64 0, i64* %139, align 8
  %140 = load %struct.pbank*, %struct.pbank** %8, align 8
  %141 = getelementptr inbounds %struct.pbank, %struct.pbank* %140, i32 0, i32 20
  store volatile i64 0, i64* %141, align 8
  %142 = load %struct.pbank*, %struct.pbank** %8, align 8
  %143 = getelementptr inbounds %struct.pbank, %struct.pbank* %142, i32 0, i32 8
  store volatile i32 1073741824, i32* %143, align 8
  %144 = load %struct.pbank*, %struct.pbank** %8, align 8
  %145 = getelementptr inbounds %struct.pbank, %struct.pbank* %144, i32 0, i32 7
  store volatile i32 1073741824, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 1073741824
  %151 = load %struct.pbank*, %struct.pbank** %8, align 8
  %152 = getelementptr inbounds %struct.pbank, %struct.pbank* %151, i32 0, i32 10
  store volatile i32 %150, i32* %152, align 8
  %153 = load %struct.pbank*, %struct.pbank** %8, align 8
  %154 = getelementptr inbounds %struct.pbank, %struct.pbank* %153, i32 0, i32 9
  store volatile i32 %150, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 1073741824
  %160 = load %struct.pbank*, %struct.pbank** %8, align 8
  %161 = getelementptr inbounds %struct.pbank, %struct.pbank* %160, i32 0, i32 12
  store volatile i32 %159, i32* %161, align 8
  %162 = load %struct.pbank*, %struct.pbank** %8, align 8
  %163 = getelementptr inbounds %struct.pbank, %struct.pbank* %162, i32 0, i32 11
  store volatile i32 %159, i32* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 1073741824
  %169 = load %struct.pbank*, %struct.pbank** %8, align 8
  %170 = getelementptr inbounds %struct.pbank, %struct.pbank* %169, i32 0, i32 14
  store volatile i32 %168, i32* %170, align 8
  %171 = load %struct.pbank*, %struct.pbank** %8, align 8
  %172 = getelementptr inbounds %struct.pbank, %struct.pbank* %171, i32 0, i32 13
  store volatile i32 %168, i32* %172, align 4
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %176, 1073741824
  %178 = load %struct.pbank*, %struct.pbank** %8, align 8
  %179 = getelementptr inbounds %struct.pbank, %struct.pbank* %178, i32 0, i32 16
  store volatile i32 %177, i32* %179, align 8
  %180 = load %struct.pbank*, %struct.pbank** %8, align 8
  %181 = getelementptr inbounds %struct.pbank, %struct.pbank* %180, i32 0, i32 15
  store volatile i32 %177, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 1073741824
  %187 = load %struct.pbank*, %struct.pbank** %8, align 8
  %188 = getelementptr inbounds %struct.pbank, %struct.pbank* %187, i32 0, i32 18
  store volatile i32 %186, i32* %188, align 8
  %189 = load %struct.pbank*, %struct.pbank** %8, align 8
  %190 = getelementptr inbounds %struct.pbank, %struct.pbank* %189, i32 0, i32 17
  store volatile i32 %186, i32* %190, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
