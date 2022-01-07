; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_print_datadef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_print_datadef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_datadef(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 131
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 133
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 @f_print(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %41 [
    i32 130, label %22
    i32 128, label %25
    i32 132, label %28
    i32 129, label %31
    i32 131, label %34
    i32 133, label %38
  ]

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call i32 @pstructdef(%struct.TYPE_13__* %23)
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = call i32 @puniondef(%struct.TYPE_13__* %26)
  br label %41

28:                                               ; preds = %18
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @penumdef(%struct.TYPE_13__* %29)
  br label %41

31:                                               ; preds = %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = call i32 @ptypedef(%struct.TYPE_13__* %32)
  br label %41

34:                                               ; preds = %18
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pprogramdef(%struct.TYPE_13__* %35, i32 %36)
  br label %41

38:                                               ; preds = %18
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = call i32 @pconstdef(%struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %18, %38, %34, %31, %28, %25, %22
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 131
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 133
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %73, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @isvectordef(i32 %64, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %59, %51
  %74 = phi i1 [ true, %51 ], [ %72, %59 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @storexdrfuncdecl(i32 %54, i32 %75)
  br label %77

77:                                               ; preds = %9, %73, %46, %41
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

declare dso_local i32 @pstructdef(%struct.TYPE_13__*) #1

declare dso_local i32 @puniondef(%struct.TYPE_13__*) #1

declare dso_local i32 @penumdef(%struct.TYPE_13__*) #1

declare dso_local i32 @ptypedef(%struct.TYPE_13__*) #1

declare dso_local i32 @pprogramdef(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pconstdef(%struct.TYPE_13__*) #1

declare dso_local i32 @storexdrfuncdecl(i32, i32) #1

declare dso_local i32 @isvectordef(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
