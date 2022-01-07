; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_buf_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_buf_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_buf = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.camdd_buf_data }
%struct.camdd_buf_data = type { i32 }

@CAMDD_BUF_DATA = common dso_local global i64 0, align 8
@src_links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camdd_buf_add_child(%struct.camdd_buf* %0, %struct.camdd_buf* %1) #0 {
  %3 = alloca %struct.camdd_buf*, align 8
  %4 = alloca %struct.camdd_buf*, align 8
  %5 = alloca %struct.camdd_buf_data*, align 8
  store %struct.camdd_buf* %0, %struct.camdd_buf** %3, align 8
  store %struct.camdd_buf* %1, %struct.camdd_buf** %4, align 8
  %6 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  %7 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CAMDD_BUF_DATA, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  %14 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.camdd_buf_data* %15, %struct.camdd_buf_data** %5, align 8
  %16 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  %17 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %16, i32 0, i32 2
  %18 = load %struct.camdd_buf*, %struct.camdd_buf** %4, align 8
  %19 = load i32, i32* @src_links, align 4
  %20 = call i32 @STAILQ_INSERT_TAIL(i32* %17, %struct.camdd_buf* %18, i32 %19)
  %21 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  %22 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.camdd_buf*, %struct.camdd_buf** %4, align 8
  %26 = call i64 @camdd_buf_get_len(%struct.camdd_buf* %25)
  %27 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %5, align 8
  %28 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.camdd_buf*, i32) #1

declare dso_local i64 @camdd_buf_get_len(%struct.camdd_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
