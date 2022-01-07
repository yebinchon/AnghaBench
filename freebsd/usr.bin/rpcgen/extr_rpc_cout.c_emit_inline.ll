; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s *genp;\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"for (i = 0, genp = objp->%s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"i < %s; i++) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, i32)* @emit_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_inline(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %64 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @emit_single_in_line(i32 %11, %struct.TYPE_4__* %12, i32 %13, i32 129)
  br label %65

15:                                               ; preds = %3
  %16 = load i32, i32* @fout, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @tabify(i32 %16, i32 %17)
  %19 = load i32, i32* @fout, align 4
  %20 = call i32 (i32, i8*, ...) @f_print(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @fout, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @tabify(i32 %21, i32 %23)
  %25 = load i32, i32* @fout, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @fout, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @tabify(i32 %30, i32 %32)
  %34 = load i32, i32* @fout, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @f_print(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @fout, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 2
  %42 = call i32 @tabify(i32 %39, i32 %41)
  %43 = load i32, i32* @fout, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @emit_single_in_line(i32 %49, %struct.TYPE_4__* %50, i32 %51, i32 128)
  %53 = load i32, i32* @fout, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @tabify(i32 %53, i32 %55)
  %57 = load i32, i32* @fout, align 4
  %58 = call i32 (i32, i8*, ...) @f_print(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @fout, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @tabify(i32 %59, i32 %60)
  %62 = load i32, i32* @fout, align 4
  %63 = call i32 (i32, i8*, ...) @f_print(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %65

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %64, %15, %10
  ret void
}

declare dso_local i32 @emit_single_in_line(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @tabify(i32, i32) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
