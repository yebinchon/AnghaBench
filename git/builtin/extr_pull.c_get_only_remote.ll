; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_get_only_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_get_only_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*, i8*)* @get_only_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_only_remote(%struct.remote* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.remote* %0, %struct.remote** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.remote*, %struct.remote** %4, align 8
  %15 = getelementptr inbounds %struct.remote, %struct.remote* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %6, align 8
  store i8* %16, i8** %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
