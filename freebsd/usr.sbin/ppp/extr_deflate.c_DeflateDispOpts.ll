; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_deflate.c_DeflateDispOpts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_deflate.c_DeflateDispOpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm_opt = type { i32* }

@DeflateDispOpts.disp = internal global [7 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [7 x i8] c"win %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fsm_opt*)* @DeflateDispOpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DeflateDispOpts(%struct.fsm_opt* %0) #0 {
  %2 = alloca %struct.fsm_opt*, align 8
  store %struct.fsm_opt* %0, %struct.fsm_opt** %2, align 8
  %3 = load %struct.fsm_opt*, %struct.fsm_opt** %2, align 8
  %4 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 4
  %9 = add nsw i32 %8, 8
  %10 = call i32 @sprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @DeflateDispOpts.disp, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @DeflateDispOpts.disp, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
