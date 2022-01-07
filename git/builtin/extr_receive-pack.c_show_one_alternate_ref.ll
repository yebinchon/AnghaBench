; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_show_one_alternate_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_show_one_alternate_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.oidset = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".have\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*)* @show_one_alternate_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_one_alternate_ref(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.oidset*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.oidset*
  store %struct.oidset* %7, %struct.oidset** %5, align 8
  %8 = load %struct.oidset*, %struct.oidset** %5, align 8
  %9 = load %struct.object_id*, %struct.object_id** %3, align 8
  %10 = call i64 @oidset_insert(%struct.oidset* %8, %struct.object_id* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.object_id*, %struct.object_id** %3, align 8
  %15 = call i32 @show_ref(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.object_id* %14)
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @oidset_insert(%struct.oidset*, %struct.object_id*) #1

declare dso_local i32 @show_ref(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
