; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_label.c_mac_labelzone_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_label.c_mac_labelzone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"MAC labels\00", align 1
@mac_labelzone_ctor = common dso_local global i32 0, align 4
@mac_labelzone_dtor = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@zone_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_labelzone_init() #0 {
  %1 = load i32, i32* @mac_labelzone_ctor, align 4
  %2 = load i32, i32* @mac_labelzone_dtor, align 4
  %3 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %4 = call i32 @uma_zcreate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32 %1, i32 %2, i32* null, i32* null, i32 %3, i32 0)
  store i32 %4, i32* @zone_label, align 4
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
