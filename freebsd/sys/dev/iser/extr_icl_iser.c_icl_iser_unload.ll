; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_icl_iser_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_icl_iser_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Removing iSER datamover...\00", align 1
@icl_iser_ncons = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"iser\00", align 1
@icl_pdu_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @icl_iser_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_iser_unload() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @ISER_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = load i64, i64* @icl_iser_ncons, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @EBUSY, align 4
  store i32 %6, i32* %1, align 4
  br label %14

7:                                                ; preds = %0
  %8 = call i32 @sx_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 2))
  %9 = call i32 @mtx_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 1))
  %10 = call i32 @sx_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %11 = call i32 @icl_unregister(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %12 = load i32, i32* @icl_pdu_zone, align 4
  %13 = call i32 @uma_zdestroy(i32 %12)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %7, %5
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @ISER_DBG(i8*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @icl_unregister(i8*, i32) #1

declare dso_local i32 @uma_zdestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
