; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_sbuf_printf_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_sbuf_printf_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.uuid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_printf_uuid(%struct.sbuf* %0, %struct.uuid* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.uuid*, align 8
  %5 = alloca [38 x i8], align 16
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.uuid* %1, %struct.uuid** %4, align 8
  %6 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i64 0, i64 0
  %7 = load %struct.uuid*, %struct.uuid** %4, align 8
  %8 = call i32 @snprintf_uuid(i8* %6, i32 38, %struct.uuid* %7)
  %9 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %10 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i64 0, i64 0
  %11 = call i32 @sbuf_cat(%struct.sbuf* %9, i8* %10)
  ret i32 %11
}

declare dso_local i32 @snprintf_uuid(i8*, i32, %struct.uuid*) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
