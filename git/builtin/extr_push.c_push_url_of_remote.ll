; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_push_url_of_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_push_url_of_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32, i8**, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*, i8***)* @push_url_of_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_url_of_remote(%struct.remote* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote*, align 8
  %5 = alloca i8***, align 8
  store %struct.remote* %0, %struct.remote** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %6 = load %struct.remote*, %struct.remote** %4, align 8
  %7 = getelementptr inbounds %struct.remote, %struct.remote* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.remote*, %struct.remote** %4, align 8
  %12 = getelementptr inbounds %struct.remote, %struct.remote* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = load i8***, i8**** %5, align 8
  store i8** %13, i8*** %14, align 8
  %15 = load %struct.remote*, %struct.remote** %4, align 8
  %16 = getelementptr inbounds %struct.remote, %struct.remote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.remote*, %struct.remote** %4, align 8
  %20 = getelementptr inbounds %struct.remote, %struct.remote* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8***, i8**** %5, align 8
  store i8** %21, i8*** %22, align 8
  %23 = load %struct.remote*, %struct.remote** %4, align 8
  %24 = getelementptr inbounds %struct.remote, %struct.remote* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
