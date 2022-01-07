; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkseqid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkseqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, %struct.nfsrvcache* }
%struct.nfsstate = type { i64, %struct.nfsrvcache* }
%struct.nfsrvcache = type { i32, i64, i64, i64, i64 }

@ND_NFSV41 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nfsrvstate checkseqid\00", align 1
@RC_INPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"nfsrvstate not inprog\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"refcnt=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nfsrvstate op refcnt\00", align 1
@NFSERR_DONTREPLY = common dso_local global i32 0, align 4
@NFSERR_REPLYFROMCACHE = common dso_local global i32 0, align 4
@NFSERR_BADSEQID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsrv_descript*, i64, %struct.nfsstate*, %struct.nfsrvcache*)* @nfsrv_checkseqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_checkseqid(%struct.nfsrv_descript* %0, i64 %1, %struct.nfsstate* %2, %struct.nfsrvcache* %3) #0 {
  %5 = alloca %struct.nfsrv_descript*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsstate*, align 8
  %8 = alloca %struct.nfsrvcache*, align 8
  %9 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfsstate* %2, %struct.nfsstate** %7, align 8
  store %struct.nfsrvcache* %3, %struct.nfsrvcache** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %11 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ND_NFSV41, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %156

17:                                               ; preds = %4
  %18 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %19 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %20 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %19, i32 0, i32 1
  %21 = load %struct.nfsrvcache*, %struct.nfsrvcache** %20, align 8
  %22 = icmp ne %struct.nfsrvcache* %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %27 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RC_INPROG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %36 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %35, i32 0, i32 1
  %37 = load %struct.nfsrvcache*, %struct.nfsrvcache** %36, align 8
  %38 = icmp ne %struct.nfsrvcache* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %41 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %40, i32 0, i32 1
  %42 = load %struct.nfsrvcache*, %struct.nfsrvcache** %41, align 8
  %43 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %48 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %47, i32 0, i32 1
  %49 = load %struct.nfsrvcache*, %struct.nfsrvcache** %48, align 8
  %50 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %39, %34
  %55 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %56 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %63 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %62, i32 0, i32 1
  %64 = load %struct.nfsrvcache*, %struct.nfsrvcache** %63, align 8
  %65 = icmp ne %struct.nfsrvcache* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %68 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %67, i32 0, i32 1
  %69 = load %struct.nfsrvcache*, %struct.nfsrvcache** %68, align 8
  %70 = call i32 @nfsrvd_derefcache(%struct.nfsrvcache* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %73 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %74 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %73, i32 0, i32 1
  store %struct.nfsrvcache* %72, %struct.nfsrvcache** %74, align 8
  %75 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %76 = call i32 @nfsrvd_refcache(%struct.nfsrvcache* %75)
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %79 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %156

80:                                               ; preds = %54
  %81 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %82 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %153

86:                                               ; preds = %80
  %87 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %88 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %87, i32 0, i32 1
  %89 = load %struct.nfsrvcache*, %struct.nfsrvcache** %88, align 8
  %90 = icmp ne %struct.nfsrvcache* %89, null
  br i1 %90, label %91, label %153

91:                                               ; preds = %86
  %92 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %93 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %96 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %95, i32 0, i32 1
  %97 = load %struct.nfsrvcache*, %struct.nfsrvcache** %96, align 8
  %98 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %94, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %91
  %102 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %103 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %153

106:                                              ; preds = %101
  %107 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %108 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %111 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %110, i32 0, i32 1
  %112 = load %struct.nfsrvcache*, %struct.nfsrvcache** %111, align 8
  %113 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %106
  %117 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %118 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %121 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %120, i32 0, i32 1
  %122 = load %struct.nfsrvcache*, %struct.nfsrvcache** %121, align 8
  %123 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %116
  %127 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %128 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %127, i32 0, i32 1
  %129 = load %struct.nfsrvcache*, %struct.nfsrvcache** %128, align 8
  %130 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RC_INPROG, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @NFSERR_DONTREPLY, align 4
  store i32 %136, i32* %9, align 4
  br label %156

137:                                              ; preds = %126
  %138 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %139 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %138, i32 0, i32 1
  %140 = load %struct.nfsrvcache*, %struct.nfsrvcache** %139, align 8
  %141 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %142 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %141, i32 0, i32 1
  store %struct.nfsrvcache* %140, %struct.nfsrvcache** %142, align 8
  %143 = load i32, i32* @RC_INPROG, align 4
  %144 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %145 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %144, i32 0, i32 1
  %146 = load %struct.nfsrvcache*, %struct.nfsrvcache** %145, align 8
  %147 = getelementptr inbounds %struct.nfsrvcache, %struct.nfsrvcache* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 8
  %150 = load %struct.nfsrvcache*, %struct.nfsrvcache** %8, align 8
  %151 = call i32 @nfsrvd_delcache(%struct.nfsrvcache* %150)
  %152 = load i32, i32* @NFSERR_REPLYFROMCACHE, align 4
  store i32 %152, i32* %9, align 4
  br label %156

153:                                              ; preds = %116, %106, %101, %91, %86, %80
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* @NFSERR_BADSEQID, align 4
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %154, %137, %135, %71, %16
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %159 = call i32 @NFSEXITCODE2(i32 %157, %struct.nfsrv_descript* %158)
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @nfsrvd_derefcache(%struct.nfsrvcache*) #1

declare dso_local i32 @nfsrvd_refcache(%struct.nfsrvcache*) #1

declare dso_local i32 @nfsrvd_delcache(%struct.nfsrvcache*) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
