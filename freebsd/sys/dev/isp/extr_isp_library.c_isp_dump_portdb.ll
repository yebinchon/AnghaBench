; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_dump_portdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_dump_portdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@MAX_FC_TARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NIL \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PROB\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CHGD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NEW \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PVLD\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ZOMB\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"VLD \00", align 1
@__const.isp_dump_portdb.dbs = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)], align 16
@FC_PORTDB_STATE_NIL = common dso_local global i64 0, align 8
@ISP_LOGALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [81 x i8] c"Chan %d [%d]: hdl 0x%x %s %s 0x%06x =>%s 0x%06x; WWNN 0x%08x%08x WWPN 0x%08x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_dump_portdb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [8 x i8*], align 16
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_5__* @FCPARAM(i32* %11, i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %78, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_FC_TARG, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = bitcast [8 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([8 x i8*]* @__const.isp_dump_portdb.dbs to i8*), i64 64, i1 false)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FC_PORTDB_STATE_NIL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %78

32:                                               ; preds = %18
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @isp_gen_role_str(i8* %33, i32 64, i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @isp_gen_role_str(i8* %38, i32 64, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @ISP_LOGALL, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [8 x i8*], [8 x i8*]* %9, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 32
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @isp_prt(i32* %43, i32 %44, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32 %46, i32 %49, i8* %54, i8* %55, i32 %58, i8* %59, i32 %62, i32 %66, i32 %69, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %32, %31
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %14

81:                                               ; preds = %14
  ret void
}

declare dso_local %struct.TYPE_5__* @FCPARAM(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isp_gen_role_str(i8*, i32, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
