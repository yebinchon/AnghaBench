; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccnode = type { i32, i32, i8*, i8* }
%struct.ccport = type opaque
%struct.ccuser = type { i32 }
%struct.cchook = type { i32, %struct.ccuser*, i8*, %struct.ccnode* }

@.str = private unnamed_addr constant [4 x i8] c"uni\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_NG_CCATM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_ccatm_rcvuni = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@ng_ccatm_rcvdump = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"manage\00", align 1
@ng_ccatm_rcvmanage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_ccatm_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ccatm_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccnode*, align 8
  %9 = alloca %struct.ccport*, align 8
  %10 = alloca %struct.ccuser*, align 8
  %11 = alloca %struct.cchook*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.ccnode* @NG_NODE_PRIVATE(i32 %14)
  store %struct.ccnode* %15, %struct.ccnode** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %157

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = call i32 @strtoul(i8* %29, i8** %13, i32 10)
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp ugt i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %35, %27
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %157

43:                                               ; preds = %38
  %44 = load i32, i32* @M_NG_CCATM, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = call %struct.cchook* @malloc(i32 32, i32 %44, i32 %45)
  store %struct.cchook* %46, %struct.cchook** %11, align 8
  %47 = load %struct.cchook*, %struct.cchook** %11, align 8
  %48 = icmp eq %struct.cchook* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %4, align 4
  br label %157

51:                                               ; preds = %43
  %52 = load %struct.cchook*, %struct.cchook** %11, align 8
  %53 = getelementptr inbounds %struct.cchook, %struct.cchook* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %55 = load %struct.cchook*, %struct.cchook** %11, align 8
  %56 = getelementptr inbounds %struct.cchook, %struct.cchook* %55, i32 0, i32 3
  store %struct.ccnode* %54, %struct.ccnode** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.cchook*, %struct.cchook** %11, align 8
  %59 = getelementptr inbounds %struct.cchook, %struct.cchook* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %61 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cchook*, %struct.cchook** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call %struct.ccuser* @cc_port_create(i32 %62, %struct.cchook* %63, i32 %64)
  %66 = bitcast %struct.ccuser* %65 to %struct.ccport*
  store %struct.ccport* %66, %struct.ccport** %9, align 8
  %67 = load %struct.ccport*, %struct.ccport** %9, align 8
  %68 = icmp eq %struct.ccport* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.cchook*, %struct.cchook** %11, align 8
  %71 = load i32, i32* @M_NG_CCATM, align 4
  %72 = call i32 @free(%struct.cchook* %70, i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  store i32 %73, i32* %4, align 4
  br label %157

74:                                               ; preds = %51
  %75 = load %struct.ccport*, %struct.ccport** %9, align 8
  %76 = bitcast %struct.ccport* %75 to %struct.ccuser*
  %77 = load %struct.cchook*, %struct.cchook** %11, align 8
  %78 = getelementptr inbounds %struct.cchook, %struct.cchook* %77, i32 0, i32 1
  store %struct.ccuser* %76, %struct.ccuser** %78, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.cchook*, %struct.cchook** %11, align 8
  %81 = call i32 @NG_HOOK_SET_PRIVATE(i8* %79, %struct.cchook* %80)
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @ng_ccatm_rcvuni, align 4
  %84 = call i32 @NG_HOOK_SET_RCVDATA(i8* %82, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @NG_HOOK_FORCE_QUEUE(i8* %85)
  %87 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %88 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  store i32 0, i32* %4, align 4
  br label %157

91:                                               ; preds = %3
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %98 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* @ng_ccatm_rcvdump, align 4
  %101 = call i32 @NG_HOOK_SET_RCVDATA(i8* %99, i32 %100)
  store i32 0, i32* %4, align 4
  br label %157

102:                                              ; preds = %91
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %109 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @ng_ccatm_rcvmanage, align 4
  %112 = call i32 @NG_HOOK_SET_RCVDATA(i8* %110, i32 %111)
  store i32 0, i32* %4, align 4
  br label %157

113:                                              ; preds = %102
  %114 = load i32, i32* @M_NG_CCATM, align 4
  %115 = load i32, i32* @M_NOWAIT, align 4
  %116 = call %struct.cchook* @malloc(i32 32, i32 %114, i32 %115)
  store %struct.cchook* %116, %struct.cchook** %11, align 8
  %117 = load %struct.cchook*, %struct.cchook** %11, align 8
  %118 = icmp eq %struct.cchook* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %4, align 4
  br label %157

121:                                              ; preds = %113
  %122 = load %struct.cchook*, %struct.cchook** %11, align 8
  %123 = getelementptr inbounds %struct.cchook, %struct.cchook* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %125 = load %struct.cchook*, %struct.cchook** %11, align 8
  %126 = getelementptr inbounds %struct.cchook, %struct.cchook* %125, i32 0, i32 3
  store %struct.ccnode* %124, %struct.ccnode** %126, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.cchook*, %struct.cchook** %11, align 8
  %129 = getelementptr inbounds %struct.cchook, %struct.cchook* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %131 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cchook*, %struct.cchook** %11, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @NG_HOOK_NAME(i8* %134)
  %136 = call %struct.ccuser* @cc_user_create(i32 %132, %struct.cchook* %133, i32 %135)
  store %struct.ccuser* %136, %struct.ccuser** %10, align 8
  %137 = load %struct.ccuser*, %struct.ccuser** %10, align 8
  %138 = icmp eq %struct.ccuser* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %121
  %140 = load %struct.cchook*, %struct.cchook** %11, align 8
  %141 = load i32, i32* @M_NG_CCATM, align 4
  %142 = call i32 @free(%struct.cchook* %140, i32 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %4, align 4
  br label %157

144:                                              ; preds = %121
  %145 = load %struct.ccuser*, %struct.ccuser** %10, align 8
  %146 = load %struct.cchook*, %struct.cchook** %11, align 8
  %147 = getelementptr inbounds %struct.cchook, %struct.cchook* %146, i32 0, i32 1
  store %struct.ccuser* %145, %struct.ccuser** %147, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.cchook*, %struct.cchook** %11, align 8
  %150 = call i32 @NG_HOOK_SET_PRIVATE(i8* %148, %struct.cchook* %149)
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @NG_HOOK_FORCE_QUEUE(i8* %151)
  %153 = load %struct.ccnode*, %struct.ccnode** %8, align 8
  %154 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %144, %139, %119, %106, %95, %74, %69, %49, %41, %25
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.ccnode* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.cchook* @malloc(i32, i32, i32) #1

declare dso_local %struct.ccuser* @cc_port_create(i32, %struct.cchook*, i32) #1

declare dso_local i32 @free(%struct.cchook*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.cchook*) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i8*, i32) #1

declare dso_local i32 @NG_HOOK_FORCE_QUEUE(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.ccuser* @cc_user_create(i32, %struct.cchook*, i32) #1

declare dso_local i32 @NG_HOOK_NAME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
