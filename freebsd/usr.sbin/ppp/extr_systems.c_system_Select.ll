; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_system_Select.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_system_Select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.prompt = type { i32 }
%struct.datalink = type { i32 }

@modeok = common dso_local global i32 0, align 4
@userok = common dso_local global i32 0, align 4
@PHYS_ALL = common dso_local global i32 0, align 4
@modereq = common dso_local global i32 0, align 4
@SYSTEM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @system_Select(%struct.bundle* %0, i8* %1, i8* %2, %struct.prompt* %3, %struct.datalink* %4) #0 {
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.prompt*, align 8
  %10 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.prompt* %3, %struct.prompt** %9, align 8
  store %struct.datalink* %4, %struct.datalink** %10, align 8
  store i32 1, i32* @modeok, align 4
  store i32 1, i32* @userok, align 4
  %11 = load i32, i32* @PHYS_ALL, align 4
  store i32 %11, i32* @modereq, align 4
  %12 = load %struct.bundle*, %struct.bundle** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.prompt*, %struct.prompt** %9, align 8
  %16 = load %struct.datalink*, %struct.datalink** %10, align 8
  %17 = load i32, i32* @SYSTEM_EXEC, align 4
  %18 = call i32 @ReadSystem(%struct.bundle* %12, i8* %13, i8* %14, %struct.prompt* %15, %struct.datalink* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @ReadSystem(%struct.bundle*, i8*, i8*, %struct.prompt*, %struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
