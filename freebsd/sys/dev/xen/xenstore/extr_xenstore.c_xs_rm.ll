; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i32 }
%struct.sbuf = type { i32 }

@XS_RM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_rm(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.xs_transaction, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.sbuf* @xs_join(i8* %10, i8* %11)
  store %struct.sbuf* %12, %struct.sbuf** %7, align 8
  %13 = load i32, i32* @XS_RM, align 4
  %14 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %15 = call i32 @sbuf_data(%struct.sbuf* %14)
  %16 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xs_single(i32 %17, i32 %13, i32 %15, i32* null, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %20 = call i32 @sbuf_delete(%struct.sbuf* %19)
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.sbuf* @xs_join(i8*, i8*) #1

declare dso_local i32 @xs_single(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
