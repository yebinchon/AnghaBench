; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_switch_res_type_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_switch_res_type_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"VEB\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VSI\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Perfect Match MAC address\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"S-tag\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(Reserved)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Multicast hash entry\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unicast hash entry\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"VLAN\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"VSI List entry\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"VLAN Statistic Pool\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Mirror Rule\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Queue Set\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Inner VLAN Forward filter\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Inner MAC\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GRE/VN1 Key\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"VN2 Key\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Tunneling Port\00", align 1
@__const.ixl_switch_res_type_string.ixl_switch_res_type_strings = private unnamed_addr constant [20 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ixl_switch_res_type_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8*], align 16
  store i32 %0, i32* %3, align 4
  %5 = bitcast [20 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([20 x i8*]* @__const.ixl_switch_res_type_string.ixl_switch_res_type_strings to i8*), i64 160, i1 false)
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [20 x i8*], [20 x i8*]* %4, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
