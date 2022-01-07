; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_ref_sh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_ref_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_sopt_handler = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ipfw: ipfw_ctl3 invalid option %dv%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ctl3_refct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ipfw_sopt_handler*)* @find_ref_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ref_sh(i32 %0, i32 %1, %struct.ipfw_sopt_handler* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipfw_sopt_handler*, align 8
  %8 = alloca %struct.ipfw_sopt_handler*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ipfw_sopt_handler* %2, %struct.ipfw_sopt_handler** %7, align 8
  %9 = call i32 (...) @CTL3_LOCK()
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ipfw_sopt_handler* @find_sh(i32 %10, i32 %11, i32* null)
  store %struct.ipfw_sopt_handler* %12, %struct.ipfw_sopt_handler** %8, align 8
  %13 = icmp eq %struct.ipfw_sopt_handler* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = call i32 (...) @CTL3_UNLOCK()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %8, align 8
  %22 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @ctl3_refct, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @ctl3_refct, align 4
  %27 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %28 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %8, align 8
  %29 = bitcast %struct.ipfw_sopt_handler* %27 to i8*
  %30 = bitcast %struct.ipfw_sopt_handler* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = call i32 (...) @CTL3_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @CTL3_LOCK(...) #1

declare dso_local %struct.ipfw_sopt_handler* @find_sh(i32, i32, i32*) #1

declare dso_local i32 @CTL3_UNLOCK(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
