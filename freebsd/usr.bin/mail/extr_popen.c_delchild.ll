; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_delchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_delchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { %struct.child* }

@child = common dso_local global %struct.child* null, align 8
@child_freelist = common dso_local global %struct.child* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.child*)* @delchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delchild(%struct.child* %0) #0 {
  %2 = alloca %struct.child*, align 8
  %3 = alloca %struct.child**, align 8
  store %struct.child* %0, %struct.child** %2, align 8
  store %struct.child** @child, %struct.child*** %3, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.child**, %struct.child*** %3, align 8
  %6 = load %struct.child*, %struct.child** %5, align 8
  %7 = load %struct.child*, %struct.child** %2, align 8
  %8 = icmp ne %struct.child* %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = load %struct.child**, %struct.child*** %3, align 8
  %12 = load %struct.child*, %struct.child** %11, align 8
  %13 = getelementptr inbounds %struct.child, %struct.child* %12, i32 0, i32 0
  store %struct.child** %13, %struct.child*** %3, align 8
  br label %4

14:                                               ; preds = %4
  %15 = load %struct.child*, %struct.child** %2, align 8
  %16 = getelementptr inbounds %struct.child, %struct.child* %15, i32 0, i32 0
  %17 = load %struct.child*, %struct.child** %16, align 8
  %18 = load %struct.child**, %struct.child*** %3, align 8
  store %struct.child* %17, %struct.child** %18, align 8
  %19 = load %struct.child*, %struct.child** @child_freelist, align 8
  %20 = load %struct.child*, %struct.child** %2, align 8
  %21 = getelementptr inbounds %struct.child, %struct.child* %20, i32 0, i32 0
  store %struct.child* %19, %struct.child** %21, align 8
  %22 = load %struct.child*, %struct.child** %2, align 8
  store %struct.child* %22, %struct.child** @child_freelist, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
