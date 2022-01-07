; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_handle_deletes.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_handle_deletes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i64* }

@refspecs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"reset %s\0Afrom %s\0A\0A\00", align 1
@null_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_deletes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_deletes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.refspec_item*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @refspecs, i32 0, i32 0), align 8
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load %struct.refspec_item*, %struct.refspec_item** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @refspecs, i32 0, i32 1), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %8, i64 %10
  store %struct.refspec_item* %11, %struct.refspec_item** %2, align 8
  %12 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %13 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %24

18:                                               ; preds = %7
  %19 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %20 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @oid_to_hex(i32* @null_oid)
  %23 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %3

27:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
