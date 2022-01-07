; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_transaction_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_transaction_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i32 }

@XST_NIL = common dso_local global i32 0, align 4
@XS_TRANSACTION_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_XENSTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_transaction_start(%struct.xs_transaction* %0) #0 {
  %2 = alloca %struct.xs_transaction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.xs_transaction* %0, %struct.xs_transaction** %2, align 8
  %5 = load i32, i32* @XST_NIL, align 4
  %6 = load i32, i32* @XS_TRANSACTION_START, align 4
  %7 = call i32 @xs_single(i32 %5, i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i8** %3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strtoul(i8* %11, i32* null, i32 0)
  %13 = load %struct.xs_transaction*, %struct.xs_transaction** %2, align 8
  %14 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @M_XENSTORE, align 4
  %17 = call i32 @free(i8* %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @xs_single(i32, i32, i8*, i32*, i8**) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
