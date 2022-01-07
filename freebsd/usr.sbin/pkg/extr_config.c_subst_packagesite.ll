; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_subst_packagesite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_subst_packagesite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.sbuf = type { i32 }

@c = common dso_local global %struct.TYPE_2__* null, align 8
@PACKAGESITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"${ABI}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @subst_packagesite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subst_packagesite(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c, align 8
  %7 = load i64, i64* @PACKAGESITE, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c, align 8
  %14 = load i64, i64* @PACKAGESITE, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c, align 8
  %20 = load i64, i64* @PACKAGESITE, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %64

29:                                               ; preds = %24
  %30 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %30, %struct.sbuf** %3, align 8
  %31 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @sbuf_bcat(%struct.sbuf* %31, i8* %32, i32 %38)
  %40 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @sbuf_cat(%struct.sbuf* %40, i8* %41)
  %43 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @sbuf_cat(%struct.sbuf* %43, i8* %47)
  %49 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %50 = call i32 @sbuf_finish(%struct.sbuf* %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c, align 8
  %52 = load i64, i64* @PACKAGESITE, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %58 = call i32 @sbuf_data(%struct.sbuf* %57)
  %59 = call i8* @strdup(i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c, align 8
  %61 = load i64, i64* @PACKAGESITE, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %29, %28
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
