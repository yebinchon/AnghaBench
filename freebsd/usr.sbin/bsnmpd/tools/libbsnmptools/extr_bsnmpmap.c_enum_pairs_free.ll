; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_enum_pairs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_enum_pairs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_pairs = type { %struct.enum_pairs* }
%struct.enum_pair = type { %struct.enum_pair* }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enum_pairs_free(%struct.enum_pairs* %0) #0 {
  %2 = alloca %struct.enum_pairs*, align 8
  %3 = alloca %struct.enum_pair*, align 8
  store %struct.enum_pairs* %0, %struct.enum_pairs** %2, align 8
  %4 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  %5 = icmp eq %struct.enum_pairs* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %27, %7
  %9 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  %10 = call %struct.enum_pairs* @STAILQ_FIRST(%struct.enum_pairs* %9)
  %11 = bitcast %struct.enum_pairs* %10 to %struct.enum_pair*
  store %struct.enum_pair* %11, %struct.enum_pair** %3, align 8
  %12 = icmp ne %struct.enum_pair* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  %15 = load i32, i32* @link, align 4
  %16 = call i32 @STAILQ_REMOVE_HEAD(%struct.enum_pairs* %14, i32 %15)
  %17 = load %struct.enum_pair*, %struct.enum_pair** %3, align 8
  %18 = getelementptr inbounds %struct.enum_pair, %struct.enum_pair* %17, i32 0, i32 0
  %19 = load %struct.enum_pair*, %struct.enum_pair** %18, align 8
  %20 = icmp ne %struct.enum_pair* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.enum_pair*, %struct.enum_pair** %3, align 8
  %23 = getelementptr inbounds %struct.enum_pair, %struct.enum_pair* %22, i32 0, i32 0
  %24 = load %struct.enum_pair*, %struct.enum_pair** %23, align 8
  %25 = bitcast %struct.enum_pair* %24 to %struct.enum_pairs*
  %26 = call i32 @free(%struct.enum_pairs* %25)
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.enum_pair*, %struct.enum_pair** %3, align 8
  %29 = bitcast %struct.enum_pair* %28 to %struct.enum_pairs*
  %30 = call i32 @free(%struct.enum_pairs* %29)
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  %33 = call i32 @free(%struct.enum_pairs* %32)
  br label %34

34:                                               ; preds = %31, %6
  ret void
}

declare dso_local %struct.enum_pairs* @STAILQ_FIRST(%struct.enum_pairs*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.enum_pairs*, i32) #1

declare dso_local i32 @free(%struct.enum_pairs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
