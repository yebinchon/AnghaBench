; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@DEF_CONST = common dso_local global i32 0, align 4
@DEF_PROGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DEF_CONST, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DEF_PROGRAM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = call i32 @emit_program(%struct.TYPE_13__* %16)
  br label %57

18:                                               ; preds = %9
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i32 %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %57

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = call i32 @print_header(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %54 [
    i32 128, label %42
    i32 131, label %45
    i32 130, label %48
    i32 129, label %51
  ]

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = call i32 @emit_union(%struct.TYPE_13__* %43)
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @emit_enum(%struct.TYPE_13__* %46)
  br label %55

48:                                               ; preds = %36
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @emit_struct(%struct.TYPE_13__* %49)
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call i32 @emit_typedef(%struct.TYPE_13__* %52)
  br label %55

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %51, %48, %45, %42
  %56 = call i32 (...) @print_trailer()
  br label %57

57:                                               ; preds = %55, %34, %15, %8
  ret void
}

declare dso_local i32 @emit_program(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @print_header(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_union(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_enum(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_struct(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_typedef(%struct.TYPE_13__*) #1

declare dso_local i32 @print_trailer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
