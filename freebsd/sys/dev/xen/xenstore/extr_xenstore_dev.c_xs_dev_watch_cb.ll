; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_watch_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_watch_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_watch = type { i64 }
%struct.xs_dev_watch = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xsd_sockmsg = type { i64, i64, i64, i32 }

@XS_WATCH_EVENT = common dso_local global i32 0, align 4
@XS_WATCH_PATH = common dso_local global i64 0, align 8
@M_XENSTORE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_watch*, i8**, i32)* @xs_dev_watch_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_dev_watch_cb(%struct.xs_watch* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.xs_watch*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xs_dev_watch*, align 8
  %8 = alloca %struct.xsd_sockmsg, align 8
  %9 = alloca i8*, align 8
  store %struct.xs_watch* %0, %struct.xs_watch** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %11 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.xs_dev_watch*
  store %struct.xs_dev_watch* %13, %struct.xs_dev_watch** %7, align 8
  %14 = load i32, i32* @XS_WATCH_EVENT, align 4
  %15 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i64, i64* @XS_WATCH_PATH, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %24 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add i64 %22, %26
  %28 = add i64 %27, 2
  %29 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @M_XENSTORE, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i8* @malloc(i64 %31, i32 %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i64, i64* @XS_WATCH_PATH, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcpy(i8* %35, i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i64, i64* @XS_WATCH_PATH, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %41, i64 %47
  %49 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %50 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcpy(i8* %48, i8* %51)
  %53 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %54 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %59 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = bitcast %struct.xsd_sockmsg* %8 to i8*
  %62 = call i32 @xs_queue_reply(%struct.TYPE_2__* %60, i8* %61, i32 32)
  %63 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %64 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @xs_queue_reply(%struct.TYPE_2__* %65, i8* %66, i32 %69)
  %71 = load %struct.xs_dev_watch*, %struct.xs_dev_watch** %7, align 8
  %72 = getelementptr inbounds %struct.xs_dev_watch, %struct.xs_dev_watch* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @mtx_unlock(i32* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* @M_XENSTORE, align 4
  %78 = call i32 @free(i8* %76, i32 %77)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xs_queue_reply(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
