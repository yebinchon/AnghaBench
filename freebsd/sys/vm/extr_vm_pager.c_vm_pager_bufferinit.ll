; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_vm_pager_bufferinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_vm_pager_bufferinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pbuf\00", align 1
@pbuf_ctor = common dso_local global i32 0, align 4
@pbuf_dtor = common dso_local global i32 0, align 4
@pbuf_init = common dso_local global i32 0, align 4
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@pbuf_zone = common dso_local global i32 0, align 4
@NSWBUF_MIN = common dso_local global i32 0, align 4
@nswbuf_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_pager_bufferinit() #0 {
  %1 = load i32, i32* @pbuf_ctor, align 4
  %2 = load i32, i32* @pbuf_dtor, align 4
  %3 = load i32, i32* @pbuf_init, align 4
  %4 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %5 = load i32, i32* @UMA_ZONE_VM, align 4
  %6 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @uma_zcreate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %1, i32 %2, i32 %3, i32* null, i32 %4, i32 %7)
  store i32 %8, i32* @pbuf_zone, align 4
  %9 = load i32, i32* @pbuf_zone, align 4
  %10 = load i32, i32* @NSWBUF_MIN, align 4
  %11 = call i64 @uma_zone_set_max(i32 %9, i32 %10)
  %12 = load i32, i32* @nswbuf_max, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @nswbuf_max, align 4
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @uma_zone_set_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
