; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { %struct.timespec, %struct.sockaddr_nb*, i32*, i32* }
%struct.timespec = type { i32, i64 }
%struct.sockaddr_nb = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NB_MINSALEN = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.sockaddr*, %struct.thread*)* @smb_nbst_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_connect(%struct.smb_vc* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_vc*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.nbpcb*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.sockaddr_nb*, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %15 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %16 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %15, i32 0, i32 0
  %17 = load %struct.nbpcb*, %struct.nbpcb** %16, align 8
  store %struct.nbpcb* %17, %struct.nbpcb** %8, align 8
  %18 = call i32 @NBDEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %20 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EISCONN, align 4
  store i32 %24, i32* %4, align 4
  br label %113

25:                                               ; preds = %3
  %26 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %27 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %25
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @NB_MINSALEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %32
  %42 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %43 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %42, i32 0, i32 1
  %44 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %43, align 8
  %45 = icmp ne %struct.sockaddr_nb* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %48 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %47, i32 0, i32 1
  %49 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %48, align 8
  %50 = load i32, i32* @M_SONAME, align 4
  %51 = call i32 @free(%struct.sockaddr_nb* %49, i32 %50)
  %52 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %53 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %52, i32 0, i32 1
  store %struct.sockaddr_nb* null, %struct.sockaddr_nb** %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call i64 @sodupsockaddr(%struct.sockaddr* %55, i32 %56)
  %58 = inttoptr i64 %57 to %struct.sockaddr_nb*
  store %struct.sockaddr_nb* %58, %struct.sockaddr_nb** %10, align 8
  %59 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %10, align 8
  %60 = icmp eq %struct.sockaddr_nb* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %4, align 4
  br label %113

63:                                               ; preds = %54
  %64 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %10, align 8
  %65 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %66 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %65, i32 0, i32 1
  store %struct.sockaddr_nb* %64, %struct.sockaddr_nb** %66, align 8
  %67 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %10, align 8
  %68 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %67, i32 0, i32 0
  %69 = bitcast %struct.sockaddr_in* %9 to i8*
  %70 = bitcast %struct.sockaddr_in* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = call i32 @getnanotime(%struct.timespec* %11)
  %72 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = call i32 @nb_connect_in(%struct.nbpcb* %72, %struct.sockaddr_in* %9, %struct.thread* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %113

79:                                               ; preds = %63
  %80 = call i32 @getnanotime(%struct.timespec* %12)
  %81 = call i32 @timespecsub(%struct.timespec* %12, %struct.timespec* %11, %struct.timespec* %12)
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %90 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %89, i32 0, i32 0
  %91 = call i32 @timespecadd(%struct.timespec* %12, %struct.timespec* %12, %struct.timespec* %90)
  %92 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %93 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %92, i32 0, i32 0
  %94 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %95 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %94, i32 0, i32 0
  %96 = call i32 @timespecadd(%struct.timespec* %93, %struct.timespec* %12, %struct.timespec* %95)
  %97 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %98 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %97, i32 0, i32 0
  %99 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %100 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %99, i32 0, i32 0
  %101 = call i32 @timespecadd(%struct.timespec* %98, %struct.timespec* %12, %struct.timespec* %100)
  %102 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %103 = load %struct.thread*, %struct.thread** %7, align 8
  %104 = call i32 @nbssn_rq_request(%struct.nbpcb* %102, %struct.thread* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %88
  %108 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %109 = load %struct.thread*, %struct.thread** %7, align 8
  %110 = call i32 @smb_nbst_disconnect(%struct.smb_vc* %108, %struct.thread* %109)
  br label %111

111:                                              ; preds = %107, %88
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %77, %61, %39, %30, %23
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @NBDEBUG(i8*) #1

declare dso_local i32 @free(%struct.sockaddr_nb*, i32) #1

declare dso_local i64 @sodupsockaddr(%struct.sockaddr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @nb_connect_in(%struct.nbpcb*, %struct.sockaddr_in*, %struct.thread*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @nbssn_rq_request(%struct.nbpcb*, %struct.thread*) #1

declare dso_local i32 @smb_nbst_disconnect(%struct.smb_vc*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
