; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_mark_used.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_mark_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.fsck_options = type { i32 }

@USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* @mark_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_used(%struct.object* %0, i32 %1, i8* %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fsck_options*, align 8
  store %struct.object* %0, %struct.object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %19

13:                                               ; preds = %4
  %14 = load i32, i32* @USED, align 4
  %15 = load %struct.object*, %struct.object** %6, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
