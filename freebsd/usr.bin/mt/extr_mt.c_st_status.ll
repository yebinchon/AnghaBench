; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_st_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_st_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtget = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [282 x i8] c"Mode      Density              Blocksize      bpi      Compression\0ACurrent:  %-17s    %-12s   %-7d  %s\0A---------available modes---------\0A0:        %-17s    %-12s   %-7d  %s\0A1:        %-17s    %-12s   %-7d  %s\0A2:        %-17s    %-12s   %-7d  %s\0A3:        %-17s    %-12s   %-7d  %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MTIO_DSREG_NIL = common dso_local global i64 0, align 8
@__const.st_status.sfmt = private unnamed_addr constant [27 x i8] c"Current Driver State: %s.\0A\00", align 16
@.str.1 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown state 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"File Number: %d\09Record Number: %d\09Residual Count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtget*)* @st_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_status(%struct.mtget* %0) #0 {
  %2 = alloca %struct.mtget*, align 8
  %3 = alloca [27 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.mtget* %0, %struct.mtget** %2, align 8
  %6 = load %struct.mtget*, %struct.mtget** %2, align 8
  %7 = getelementptr inbounds %struct.mtget, %struct.mtget* %6, i32 0, i32 17
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @denstostring(i32 %8)
  %10 = load %struct.mtget*, %struct.mtget** %2, align 8
  %11 = getelementptr inbounds %struct.mtget, %struct.mtget* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @getblksiz(i32 %12)
  %14 = load %struct.mtget*, %struct.mtget** %2, align 8
  %15 = getelementptr inbounds %struct.mtget, %struct.mtget* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @mt_density_bp(i32 %16, i32 %17)
  %19 = load %struct.mtget*, %struct.mtget** %2, align 8
  %20 = getelementptr inbounds %struct.mtget, %struct.mtget* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @comptostring(i32 %21)
  %23 = load %struct.mtget*, %struct.mtget** %2, align 8
  %24 = getelementptr inbounds %struct.mtget, %struct.mtget* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @denstostring(i32 %25)
  %27 = load %struct.mtget*, %struct.mtget** %2, align 8
  %28 = getelementptr inbounds %struct.mtget, %struct.mtget* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @getblksiz(i32 %29)
  %31 = load %struct.mtget*, %struct.mtget** %2, align 8
  %32 = getelementptr inbounds %struct.mtget, %struct.mtget* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @mt_density_bp(i32 %33, i32 %34)
  %36 = load %struct.mtget*, %struct.mtget** %2, align 8
  %37 = getelementptr inbounds %struct.mtget, %struct.mtget* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @comptostring(i32 %38)
  %40 = load %struct.mtget*, %struct.mtget** %2, align 8
  %41 = getelementptr inbounds %struct.mtget, %struct.mtget* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @denstostring(i32 %42)
  %44 = load %struct.mtget*, %struct.mtget** %2, align 8
  %45 = getelementptr inbounds %struct.mtget, %struct.mtget* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @getblksiz(i32 %46)
  %48 = load %struct.mtget*, %struct.mtget** %2, align 8
  %49 = getelementptr inbounds %struct.mtget, %struct.mtget* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @mt_density_bp(i32 %50, i32 %51)
  %53 = load %struct.mtget*, %struct.mtget** %2, align 8
  %54 = getelementptr inbounds %struct.mtget, %struct.mtget* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @comptostring(i32 %55)
  %57 = load %struct.mtget*, %struct.mtget** %2, align 8
  %58 = getelementptr inbounds %struct.mtget, %struct.mtget* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @denstostring(i32 %59)
  %61 = load %struct.mtget*, %struct.mtget** %2, align 8
  %62 = getelementptr inbounds %struct.mtget, %struct.mtget* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @getblksiz(i32 %63)
  %65 = load %struct.mtget*, %struct.mtget** %2, align 8
  %66 = getelementptr inbounds %struct.mtget, %struct.mtget* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @mt_density_bp(i32 %67, i32 %68)
  %70 = load %struct.mtget*, %struct.mtget** %2, align 8
  %71 = getelementptr inbounds %struct.mtget, %struct.mtget* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @comptostring(i32 %72)
  %74 = load %struct.mtget*, %struct.mtget** %2, align 8
  %75 = getelementptr inbounds %struct.mtget, %struct.mtget* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @denstostring(i32 %76)
  %78 = load %struct.mtget*, %struct.mtget** %2, align 8
  %79 = getelementptr inbounds %struct.mtget, %struct.mtget* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @getblksiz(i32 %80)
  %82 = load %struct.mtget*, %struct.mtget** %2, align 8
  %83 = getelementptr inbounds %struct.mtget, %struct.mtget* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @mt_density_bp(i32 %84, i32 %85)
  %87 = load %struct.mtget*, %struct.mtget** %2, align 8
  %88 = getelementptr inbounds %struct.mtget, %struct.mtget* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @comptostring(i32 %89)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([282 x i8], [282 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %13, i32 %18, i8* %22, i8* %26, i8* %30, i32 %35, i8* %39, i8* %43, i8* %47, i32 %52, i8* %56, i8* %60, i8* %64, i32 %69, i8* %73, i8* %77, i8* %81, i32 %86, i8* %90)
  %92 = load %struct.mtget*, %struct.mtget** %2, align 8
  %93 = getelementptr inbounds %struct.mtget, %struct.mtget* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MTIO_DSREG_NIL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %1
  %98 = bitcast [27 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %98, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.st_status.sfmt, i32 0, i32 0), i64 27, i1 false)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.mtget*, %struct.mtget** %2, align 8
  %101 = getelementptr inbounds %struct.mtget, %struct.mtget* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @get_driver_state_str(i64 %102)
  store i8* %103, i8** %4, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %108 = load %struct.mtget*, %struct.mtget** %2, align 8
  %109 = getelementptr inbounds %struct.mtget, %struct.mtget* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @sprintf(i8* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = getelementptr inbounds [27 x i8], [27 x i8]* %3, i64 0, i64 0
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %114 = call i32 (i8*, ...) @printf(i8* %112, i8* %113)
  br label %119

115:                                              ; preds = %97
  %116 = getelementptr inbounds [27 x i8], [27 x i8]* %3, i64 0, i64 0
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 (i8*, ...) @printf(i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %115, %106
  br label %120

120:                                              ; preds = %119, %1
  %121 = load %struct.mtget*, %struct.mtget** %2, align 8
  %122 = getelementptr inbounds %struct.mtget, %struct.mtget* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.mtget*, %struct.mtget** %2, align 8
  %127 = getelementptr inbounds %struct.mtget, %struct.mtget* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, -1
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.mtget*, %struct.mtget** %2, align 8
  %132 = getelementptr inbounds %struct.mtget, %struct.mtget* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %148

136:                                              ; preds = %130, %125, %120
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.mtget*, %struct.mtget** %2, align 8
  %139 = getelementptr inbounds %struct.mtget, %struct.mtget* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.mtget*, %struct.mtget** %2, align 8
  %142 = getelementptr inbounds %struct.mtget, %struct.mtget* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mtget*, %struct.mtget** %2, align 8
  %145 = getelementptr inbounds %struct.mtget, %struct.mtget* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %140, i64 %143, i64 %146)
  br label %148

148:                                              ; preds = %136, %135
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @denstostring(i32) #1

declare dso_local i8* @getblksiz(i32) #1

declare dso_local i32 @mt_density_bp(i32, i32) #1

declare dso_local i8* @comptostring(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @get_driver_state_str(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
