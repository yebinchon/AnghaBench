; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_first_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_first_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.ypresp_val = type { i32 }

@ypproc_first_2_svc.res = internal global %struct.ypresp_key_val zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"master.passwd.byname\00", align 1
@env = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"group.byname\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unknown map %s\00", align 1
@YP_NOMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ypresp_key_val* @ypproc_first_2_svc(%struct.TYPE_4__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.ypresp_key_val*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @yp_valid_domain(i32 %8, %struct.ypresp_val* bitcast (%struct.ypresp_key_val* @ypproc_first_2_svc.res to %struct.ypresp_val*))
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.ypresp_key_val* @ypproc_first_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18, %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.ypresp_key_val* null, %struct.ypresp_key_val** %3, align 8
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @yp_make_keyval(%struct.ypresp_key_val* @ypproc_first_2_svc.res, i32* %33, i32* %36)
  br label %65

38:                                               ; preds = %18
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.ypresp_key_val* null, %struct.ypresp_key_val** %3, align 8
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @env, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @yp_make_keyval(%struct.ypresp_key_val* @ypproc_first_2_svc.res, i32* %53, i32* %56)
  br label %64

58:                                               ; preds = %38
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @YP_NOMAP, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_first_2_svc.res, i32 0, i32 0), align 4
  br label %64

64:                                               ; preds = %58, %50
  br label %65

65:                                               ; preds = %64, %30
  store %struct.ypresp_key_val* @ypproc_first_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %66

66:                                               ; preds = %65, %49, %29, %11
  %67 = load %struct.ypresp_key_val*, %struct.ypresp_key_val** %3, align 8
  ret %struct.ypresp_key_val* %67
}

declare dso_local i32 @yp_valid_domain(i32, %struct.ypresp_val*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @yp_make_keyval(%struct.ypresp_key_val*, i32*, i32*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
