; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_vc_speed_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_vc_speed_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"100 Mbps\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1 Gbps\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"10 Gbps\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"40 Gbps\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"20 Gbps\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"25 Gbps\00", align 1
@__const.iavf_vc_speed_to_string.speeds = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iavf_vc_speed_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8*], align 16
  store i32 %0, i32* %2, align 4
  %5 = bitcast [7 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([7 x i8*]* @__const.iavf_vc_speed_to_string.speeds to i8*), i64 56, i1 false)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %14 [
    i32 134, label %7
    i32 132, label %8
    i32 133, label %9
    i32 129, label %10
    i32 131, label %11
    i32 130, label %12
    i32 128, label %13
  ]

7:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %15

8:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %15

9:                                                ; preds = %1
  store i32 3, i32* %3, align 4
  br label %15

10:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %15

11:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %15

12:                                               ; preds = %1
  store i32 6, i32* %3, align 4
  br label %15

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %12, %11, %10, %9, %8, %7
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  ret i8* %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
