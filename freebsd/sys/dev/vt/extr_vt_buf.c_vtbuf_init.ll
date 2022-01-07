; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VBF_DEFAULT_HISTORY_SIZE = common dso_local global i32 0, align 4
@VBF_STATIC = common dso_local global i32 0, align 4
@M_VTBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_init(%struct.vt_buf* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.vt_buf*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %7 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = bitcast %struct.TYPE_3__* %7 to i8*
  %10 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load i32, i32* @VBF_DEFAULT_HISTORY_SIZE, align 4
  %12 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %13 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %15 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VBF_STATIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %22 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @M_VTBUF, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @malloc(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %38 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %40 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @M_VTBUF, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @malloc(i32 %45, i32 %46, i32 %49)
  %51 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %52 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %20, %2
  %54 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %55 = call i32 @vtbuf_init_early(%struct.vt_buf* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @vtbuf_init_early(%struct.vt_buf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
