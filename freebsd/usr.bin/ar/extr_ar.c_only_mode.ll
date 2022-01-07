; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_only_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_only_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Option %s is not permitted in mode -%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*, i8*)* @only_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @only_mode(%struct.bsdar* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bsdar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %9 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @strchr(i8* %7, i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %15 = load i32, i32* @EX_USAGE, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %18 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bsdar_errc(%struct.bsdar* %14, i32 %15, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
