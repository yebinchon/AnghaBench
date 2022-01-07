; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cybreak.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.com_s* }
%struct.com_s = type { i32 }

@CD1400_ETC_SENDBREAK = common dso_local global i32 0, align 4
@CD1400_ETC_STOPBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @cybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cybreak(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.com_s*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 0
  %8 = load %struct.com_s*, %struct.com_s** %7, align 8
  store %struct.com_s* %8, %struct.com_s** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.com_s*, %struct.com_s** %5, align 8
  %13 = load i32, i32* @CD1400_ETC_SENDBREAK, align 4
  %14 = call i32 @cd_etc(%struct.com_s* %12, i32 %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.com_s*, %struct.com_s** %5, align 8
  %17 = load i32, i32* @CD1400_ETC_STOPBREAK, align 4
  %18 = call i32 @cd_etc(%struct.com_s* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @cd_etc(%struct.com_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
