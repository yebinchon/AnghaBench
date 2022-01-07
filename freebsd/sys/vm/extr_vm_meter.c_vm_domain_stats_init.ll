; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_meter.c_vm_domain_stats_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_meter.c_vm_domain_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.sysctl_oid* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"free_count\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Free pages\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@PQ_ACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Active pages\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"actpdpgs\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Active pages scanned by the page daemon\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@PQ_INACTIVE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"Inactive pages\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"inactpdpgs\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Inactive pages scanned by the page daemon\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"laundry\00", align 1
@PQ_LAUNDRY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"laundry pages\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"laundpdpgs\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Laundry pages scanned by the page daemon\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"unswappable\00", align 1
@PQ_UNSWAPPABLE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"Unswappable pages\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"unswppdpgs\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Unswappable pages scanned by the page daemon\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"inactive_target\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Target inactive pages\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"free_target\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Target free pages\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"free_reserved\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Reserved free pages\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"free_min\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Minimum free pages\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"free_severe\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Severe free pages\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_domain*, %struct.sysctl_oid*)* @vm_domain_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_domain_stats_init(%struct.vm_domain* %0, %struct.sysctl_oid* %1) #0 {
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store %struct.vm_domain* %0, %struct.vm_domain** %3, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %4, align 8
  %6 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %7 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %6)
  %8 = load i32, i32* @OID_AUTO, align 4
  %9 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %10 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @CTLFLAG_RD, align 4
  %13 = call i8* @SYSCTL_ADD_NODE(i32* null, i32 %7, i32 %8, i8* %11, i32 %12, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to %struct.sysctl_oid*
  %15 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %16 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %15, i32 0, i32 8
  store %struct.sysctl_oid* %14, %struct.sysctl_oid** %16, align 8
  %17 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %18 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %17, i32 0, i32 8
  %19 = load %struct.sysctl_oid*, %struct.sysctl_oid** %18, align 8
  %20 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = call i8* @SYSCTL_ADD_NODE(i32* null, i32 %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = bitcast i8* %23 to %struct.sysctl_oid*
  store %struct.sysctl_oid* %24, %struct.sysctl_oid** %5, align 8
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %26 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %25)
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %30 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %29, i32 0, i32 7
  %31 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32* %30, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %33 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %32)
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLFLAG_RD, align 4
  %36 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %37 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* @PQ_ACTIVE, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32* %41, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %44 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %43)
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %48 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @PQ_ACTIVE, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @SYSCTL_ADD_U64(i32* null, i32 %44, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32* %52, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %59 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %58, i32 0, i32 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @PQ_INACTIVE, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %55, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32* %63, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %65 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %66 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %65)
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RD, align 4
  %69 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %70 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %69, i32 0, i32 6
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* @PQ_INACTIVE, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @SYSCTL_ADD_U64(i32* null, i32 %66, i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %68, i32* %74, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %77 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %81 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %80, i32 0, i32 6
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @PQ_LAUNDRY, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %77, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %79, i32* %85, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %87 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %88 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %87)
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLFLAG_RD, align 4
  %91 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %92 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %91, i32 0, i32 6
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @PQ_LAUNDRY, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @SYSCTL_ADD_U64(i32* null, i32 %88, i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %90, i32* %96, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %98 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %99 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %98)
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %103 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %102, i32 0, i32 6
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* @PQ_UNSWAPPABLE, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %99, i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %101, i32* %107, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %110 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLFLAG_RD, align 4
  %113 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %114 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i64, i64* @PQ_UNSWAPPABLE, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @SYSCTL_ADD_U64(i32* null, i32 %110, i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %112, i32* %118, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %120 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %121 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %120)
  %122 = load i32, i32* @OID_AUTO, align 4
  %123 = load i32, i32* @CTLFLAG_RD, align 4
  %124 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %125 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %124, i32 0, i32 5
  %126 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %121, i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %123, i32* %125, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %128 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  %129 = load i32, i32* @OID_AUTO, align 4
  %130 = load i32, i32* @CTLFLAG_RD, align 4
  %131 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %132 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %131, i32 0, i32 4
  %133 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %128, i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %130, i32* %132, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %134 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %135 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %134)
  %136 = load i32, i32* @OID_AUTO, align 4
  %137 = load i32, i32* @CTLFLAG_RD, align 4
  %138 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %139 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %138, i32 0, i32 3
  %140 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %135, i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %137, i32* %139, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %141 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %142 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %141)
  %143 = load i32, i32* @OID_AUTO, align 4
  %144 = load i32, i32* @CTLFLAG_RD, align 4
  %145 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %146 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %145, i32 0, i32 2
  %147 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %142, i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %144, i32* %146, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %148 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %149 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %148)
  %150 = load i32, i32* @OID_AUTO, align 4
  %151 = load i32, i32* @CTLFLAG_RD, align 4
  %152 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %153 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %152, i32 0, i32 1
  %154 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %149, i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %151, i32* %153, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i8* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U64(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
