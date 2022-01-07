; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, %struct.g_bde_softc*, %struct.g_bde_sector* }
%struct.g_bde_softc = type { i32 }
%struct.g_bde_sector = type { i64, i64, i64, %struct.g_bde_work* }
%struct.g_bde_work = type { i64, %struct.g_bde_sector*, %struct.g_bde_sector*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"NULL sp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"NULL sp->owner\00", align 1
@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"g_bde_write_done(%p)\00", align 1
@EIO = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"trashed delete op\00", align 1
@BIO_WRITE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Confused in g_bde_write_done()\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"trashed write op\00", align 1
@VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_bde_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_write_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.g_bde_work*, align 8
  %5 = alloca %struct.g_bde_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 3
  %8 = load %struct.g_bde_sector*, %struct.g_bde_sector** %7, align 8
  store %struct.g_bde_sector* %8, %struct.g_bde_sector** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 2
  %11 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  store %struct.g_bde_softc* %11, %struct.g_bde_softc** %5, align 8
  %12 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %13 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %16 = icmp ne %struct.g_bde_sector* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %20 = icmp ne %struct.g_bde_softc* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %24 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %23, i32 0, i32 3
  %25 = load %struct.g_bde_work*, %struct.g_bde_work** %24, align 8
  %26 = icmp ne %struct.g_bde_work* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @G_T_TOPOLOGY, align 4
  %30 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %31 = call i32 @g_trace(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.g_bde_sector* %30)
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %41 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i64, i64* @EIO, align 8
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %36, %1
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %53 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = call i32 @g_destroy_bio(%struct.bio* %54)
  %56 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %57 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %56, i32 0, i32 3
  %58 = load %struct.g_bde_work*, %struct.g_bde_work** %57, align 8
  store %struct.g_bde_work* %58, %struct.g_bde_work** %4, align 8
  %59 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %60 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %65 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %68 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %48
  %70 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %71 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BIO_DELETE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %79 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %80 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %79, i32 0, i32 2
  %81 = load %struct.g_bde_sector*, %struct.g_bde_sector** %80, align 8
  %82 = icmp eq %struct.g_bde_sector* %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @KASSERT(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %86 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %87 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @g_bde_work_done(%struct.g_bde_work* %85, i64 %88)
  %90 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %91 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %90, i32 0, i32 0
  %92 = call i32 @mtx_unlock(i32* %91)
  br label %163

93:                                               ; preds = %69
  %94 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %95 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BIO_WRITE, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @KASSERT(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %104 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %105 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %104, i32 0, i32 2
  %106 = load %struct.g_bde_sector*, %struct.g_bde_sector** %105, align 8
  %107 = icmp eq %struct.g_bde_sector* %103, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %93
  %109 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %110 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %111 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %110, i32 0, i32 1
  %112 = load %struct.g_bde_sector*, %struct.g_bde_sector** %111, align 8
  %113 = icmp eq %struct.g_bde_sector* %109, %112
  br label %114

114:                                              ; preds = %108, %93
  %115 = phi i1 [ true, %93 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @KASSERT(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %118 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %119 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %118, i32 0, i32 2
  %120 = load %struct.g_bde_sector*, %struct.g_bde_sector** %119, align 8
  %121 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %122 = icmp eq %struct.g_bde_sector* %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %114
  %124 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %125 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %126 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %125, i32 0, i32 2
  %127 = load %struct.g_bde_sector*, %struct.g_bde_sector** %126, align 8
  %128 = call i32 @g_bde_delete_sector(%struct.g_bde_softc* %124, %struct.g_bde_sector* %127)
  %129 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %130 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %129, i32 0, i32 2
  store %struct.g_bde_sector* null, %struct.g_bde_sector** %130, align 8
  br label %135

131:                                              ; preds = %114
  %132 = load i64, i64* @VALID, align 8
  %133 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %134 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %123
  %136 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %137 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %136, i32 0, i32 2
  %138 = load %struct.g_bde_sector*, %struct.g_bde_sector** %137, align 8
  %139 = icmp eq %struct.g_bde_sector* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %142 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %141, i32 0, i32 1
  %143 = load %struct.g_bde_sector*, %struct.g_bde_sector** %142, align 8
  %144 = icmp ne %struct.g_bde_sector* %143, null
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %147 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %146, i32 0, i32 1
  %148 = load %struct.g_bde_sector*, %struct.g_bde_sector** %147, align 8
  %149 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VALID, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %155 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %156 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @g_bde_work_done(%struct.g_bde_work* %154, i64 %157)
  br label %159

159:                                              ; preds = %153, %145, %140, %135
  %160 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %161 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %160, i32 0, i32 0
  %162 = call i32 @mtx_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %77
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_sector*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_bde_work_done(%struct.g_bde_work*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_bde_delete_sector(%struct.g_bde_softc*, %struct.g_bde_sector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
