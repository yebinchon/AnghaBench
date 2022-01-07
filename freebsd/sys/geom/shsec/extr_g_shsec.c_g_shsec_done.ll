; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.bio* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_shsec_softc* }
%struct.g_shsec_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Request done.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Request failed (error=%d).\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@G_SHSEC_BFLAG_FIRST = common dso_local global i32 0, align 4
@g_shsec_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_shsec_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_shsec_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_shsec_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 9
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %13, align 8
  store %struct.g_shsec_softc* %14, %struct.g_shsec_softc** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 (i32, %struct.bio*, i8*, ...) @G_SHSEC_LOGREQ(i32 2, %struct.bio* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, %struct.bio*, i8*, ...) @G_SHSEC_LOGREQ(i32 0, %struct.bio* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BIO_READ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @G_SHSEC_BFLAG_FIRST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @bcopy(i64 %55, i64 %58, i64 %61)
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  br label %79

65:                                               ; preds = %45
  %66 = load %struct.bio*, %struct.bio** %2, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @g_shsec_xor1(i32* %69, i32* %73, i32 %77)
  br label %79

79:                                               ; preds = %65, %52
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.bio*, %struct.bio** %2, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.bio*, %struct.bio** %2, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @bzero(i64 %83, i64 %86)
  %88 = load i32, i32* @g_shsec_zone, align 4
  %89 = load %struct.bio*, %struct.bio** %2, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @uma_zfree(i32 %88, i64 %91)
  %93 = load %struct.bio*, %struct.bio** %2, align 8
  %94 = call i32 @g_destroy_bio(%struct.bio* %93)
  %95 = load %struct.bio*, %struct.bio** %4, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.bio*, %struct.bio** %4, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.bio*, %struct.bio** %4, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %80
  %107 = load %struct.bio*, %struct.bio** %4, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bio*, %struct.bio** %4, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 6
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bio*, %struct.bio** %4, align 8
  %113 = load %struct.bio*, %struct.bio** %4, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @g_io_deliver(%struct.bio* %112, i64 %115)
  br label %117

117:                                              ; preds = %106, %80
  ret void
}

declare dso_local i32 @G_SHSEC_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i32 @g_shsec_xor1(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i64, i64) #1

declare dso_local i32 @uma_zfree(i32, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
