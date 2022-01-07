; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_create_fetch_oidset.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_create_fetch_oidset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, i32 }
%struct.oidset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref**, %struct.oidset*)* @create_fetch_oidset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_fetch_oidset(%struct.ref** %0, %struct.oidset* %1) #0 {
  %3 = alloca %struct.ref**, align 8
  %4 = alloca %struct.oidset*, align 8
  %5 = alloca %struct.ref*, align 8
  store %struct.ref** %0, %struct.ref*** %3, align 8
  store %struct.oidset* %1, %struct.oidset** %4, align 8
  %6 = load %struct.ref**, %struct.ref*** %3, align 8
  %7 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %7, %struct.ref** %5, align 8
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.ref*, %struct.ref** %5, align 8
  %10 = icmp ne %struct.ref* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.oidset*, %struct.oidset** %4, align 8
  %13 = load %struct.ref*, %struct.ref** %5, align 8
  %14 = getelementptr inbounds %struct.ref, %struct.ref* %13, i32 0, i32 1
  %15 = call i32 @oidset_insert(%struct.oidset* %12, i32* %14)
  %16 = load %struct.ref*, %struct.ref** %5, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 0
  %18 = load %struct.ref*, %struct.ref** %17, align 8
  store %struct.ref* %18, %struct.ref** %5, align 8
  br label %8

19:                                               ; preds = %8
  ret void
}

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
