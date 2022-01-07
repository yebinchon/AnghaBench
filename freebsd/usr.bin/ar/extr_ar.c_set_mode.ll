; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't specify both -%c and -%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(%struct.bsdar* %0, i8 signext %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8, align 1
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %6 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %12 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %20 = load i32, i32* @EX_USAGE, align 4
  %21 = load i8, i8* %4, align 1
  %22 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %23 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @bsdar_errc(%struct.bsdar* %19, i32 %20, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 signext %21, i8 signext %24)
  br label %26

26:                                               ; preds = %18, %10, %2
  %27 = load i8, i8* %4, align 1
  %28 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %29 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %28, i32 0, i32 0
  store i8 %27, i8* %29, align 1
  ret void
}

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
