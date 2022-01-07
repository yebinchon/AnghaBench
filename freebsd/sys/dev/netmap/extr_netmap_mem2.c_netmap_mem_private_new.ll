; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_private_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_private_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_params = type { i32, i32 }
%struct.netmap_mem_d = type { i32 }

@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@netmap_min_priv_params = common dso_local global %struct.netmap_obj_params* null, align 8
@NETMAP_IF_POOL = common dso_local global i64 0, align 8
@NETMAP_RING_POOL = common dso_local global i64 0, align 8
@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"req if %d*%d ring %d*%d buf %d*%d\00", align 1
@netmap_mem_global_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netmap_mem_d* @netmap_mem_private_new(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.netmap_mem_d*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store %struct.netmap_mem_d* null, %struct.netmap_mem_d** %15, align 8
  %21 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca %struct.netmap_obj_params, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %43, %7
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %35
  %37 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** @netmap_min_priv_params, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %37, i64 %39
  %41 = bitcast %struct.netmap_obj_params* %36 to i8*
  %42 = bitcast %struct.netmap_obj_params* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %18, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = add i64 4, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i64, i64* @NETMAP_IF_POOL, align 8
  %55 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %54
  %56 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load i32, i32* %19, align 4
  %62 = load i64, i64* @NETMAP_IF_POOL, align 8
  %63 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %62
  %64 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %46
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 4, %66
  %68 = add nsw i32 2, %67
  store i32 %68, i32* %19, align 4
  %69 = load i64, i64* @NETMAP_IF_POOL, align 8
  %70 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %69
  %71 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %19, align 4
  %77 = load i64, i64* @NETMAP_IF_POOL, align 8
  %78 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %77
  %79 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = add i64 4, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %19, align 4
  %95 = load i64, i64* @NETMAP_RING_POOL, align 8
  %96 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %95
  %97 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %19, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load i32, i32* %19, align 4
  %103 = load i64, i64* @NETMAP_RING_POOL, align 8
  %104 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %103
  %105 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %88
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 8, %110
  %112 = add nsw i32 %109, %111
  store i32 %112, i32* %19, align 4
  %113 = load i64, i64* @NETMAP_RING_POOL, align 8
  %114 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %113
  %115 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %106
  %120 = load i32, i32* %19, align 4
  %121 = load i64, i64* @NETMAP_RING_POOL, align 8
  %122 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %121
  %123 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %106
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 4, %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = mul nsw i32 4, %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %130, %136
  %138 = add nsw i32 %137, 2
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %19, align 4
  %141 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %142 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %141
  %143 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %124
  %148 = load i32, i32* %19, align 4
  %149 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %150 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %149
  %151 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %124
  %153 = load i64, i64* @netmap_verbose, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %152
  %156 = load i64, i64* @NETMAP_IF_POOL, align 8
  %157 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %156
  %158 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* @NETMAP_IF_POOL, align 8
  %161 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %160
  %162 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* @NETMAP_RING_POOL, align 8
  %165 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %164
  %166 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* @NETMAP_RING_POOL, align 8
  %169 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %168
  %170 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %173 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %172
  %174 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %177 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %176
  %178 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @nm_prinf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %163, i32 %167, i32 %171, i32 %175, i32 %179)
  br label %181

181:                                              ; preds = %155, %152
  %182 = load i32*, i32** %14, align 8
  %183 = call %struct.netmap_mem_d* @_netmap_mem_private_new(i32 4, %struct.netmap_obj_params* %24, i32* @netmap_mem_global_ops, i32* %182)
  store %struct.netmap_mem_d* %183, %struct.netmap_mem_d** %15, align 8
  %184 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %15, align 8
  %185 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %185)
  ret %struct.netmap_mem_d* %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32, i32, i32, i32) #3

declare dso_local %struct.netmap_mem_d* @_netmap_mem_private_new(i32, %struct.netmap_obj_params*, i32*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
