; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_mbuf_sort = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Memory is corrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lro_mbuf_sort*, i32)* @tcp_lro_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_sort(%struct.lro_mbuf_sort* %0, i32 %1) #0 {
  %3 = alloca %struct.lro_mbuf_sort*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lro_mbuf_sort, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lro_mbuf_sort* %0, %struct.lro_mbuf_sort** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %154, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 12
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %64, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %19, i64 %21
  %23 = bitcast %struct.lro_mbuf_sort* %5 to i8*
  %24 = bitcast %struct.lro_mbuf_sort* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %54, %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %32, i64 %35
  %37 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %31, %38
  br label %40

40:                                               ; preds = %29, %26
  %41 = phi i1 [ false, %26 ], [ %39, %29 ]
  br i1 %41, label %42, label %57

42:                                               ; preds = %40
  %43 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %43, i64 %45
  %47 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %47, i64 %50
  %52 = bitcast %struct.lro_mbuf_sort* %46 to i8*
  %53 = bitcast %struct.lro_mbuf_sort* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %26

57:                                               ; preds = %40
  %58 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %58, i64 %60
  %62 = bitcast %struct.lro_mbuf_sort* %61 to i8*
  %63 = bitcast %struct.lro_mbuf_sort* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %14

67:                                               ; preds = %14
  br label %167

68:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %74, i64 %76
  %78 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %82, i64 %84
  %86 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %69

94:                                               ; preds = %69
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %167

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @tcp_lro_msb_64(i32 %102)
  store i32 %103, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %144, %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %147

108:                                              ; preds = %104
  %109 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %109, i64 %111
  %113 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %144

119:                                              ; preds = %108
  %120 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %120, i64 %122
  %124 = bitcast %struct.lro_mbuf_sort* %5 to i8*
  %125 = bitcast %struct.lro_mbuf_sort* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 4, i1 false)
  %126 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %126, i64 %128
  %130 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %130, i64 %132
  %134 = bitcast %struct.lro_mbuf_sort* %129 to i8*
  %135 = bitcast %struct.lro_mbuf_sort* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  %136 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %136, i64 %138
  %140 = bitcast %struct.lro_mbuf_sort* %139 to i8*
  %141 = bitcast %struct.lro_mbuf_sort* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %119, %118
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %104

147:                                              ; preds = %104
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %151, %152
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi i1 [ false, %147 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @KASSERT(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %159 = load i32, i32* %8, align 4
  call void @tcp_lro_sort(%struct.lro_mbuf_sort* %158, i32 %159)
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.lro_mbuf_sort*, %struct.lro_mbuf_sort** %3, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.lro_mbuf_sort, %struct.lro_mbuf_sort* %161, i64 %162
  store %struct.lro_mbuf_sort* %163, %struct.lro_mbuf_sort** %3, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %4, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %4, align 4
  br label %10

167:                                              ; preds = %100, %67
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tcp_lro_msb_64(i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
