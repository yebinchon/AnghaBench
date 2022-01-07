; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_next_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_next_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.userent = type { i8*, i8* }
%struct.groupent = type { i8*, i8* }
%struct.ypresp_val = type { i32 }

@ypproc_next_2_svc.res = internal global %struct.ypresp_key_val zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"master.passwd.byname\00", align 1
@YP_YPERR = common dso_local global i8* null, align 8
@user_name_tree = common dso_local global i32 0, align 4
@env = common dso_local global %struct.TYPE_7__* null, align 8
@YP_NOKEY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"group.byname\00", align 1
@group_name_tree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"unknown map %s\00", align 1
@YP_NOMAP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ypresp_key_val* @ypproc_next_2_svc(%struct.TYPE_6__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.ypresp_key_val*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.userent, align 8
  %7 = alloca %struct.userent*, align 8
  %8 = alloca %struct.groupent, align 8
  %9 = alloca %struct.groupent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @yp_valid_domain(i32 %14, %struct.ypresp_val* bitcast (%struct.ypresp_key_val* @ypproc_next_2_svc.res to %struct.ypresp_val*))
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

18:                                               ; preds = %2
  store i8* null, i8** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %108

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @calloc(i32 %35, i32 1)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** @YP_YPERR, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_next_2_svc.res, i32 0, i32 0), align 8
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

41:                                               ; preds = %30
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strncpy(i8* %42, i32 %46, i32 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds %struct.userent, %struct.userent* %6, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @user_name_tree, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.userent* @RB_FIND(i32 %54, i32 %57, %struct.userent* %6)
  store %struct.userent* %58, %struct.userent** %7, align 8
  %59 = icmp eq %struct.userent* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %41
  %61 = load i32, i32* @user_name_tree, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RB_INSERT(i32 %61, i32 %64, %struct.userent* %6)
  %66 = load i32, i32* @user_name_tree, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = call %struct.userent* @RB_NEXT(i32 %66, i32* %68, %struct.userent* %6)
  store %struct.userent* %69, %struct.userent** %7, align 8
  %70 = icmp eq %struct.userent* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %60
  %72 = load i32, i32* @user_name_tree, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @RB_REMOVE(i32 %72, i32 %75, %struct.userent* %6)
  %77 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_next_2_svc.res, i32 0, i32 0), align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @free(i8* %78)
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

80:                                               ; preds = %60
  %81 = load i32, i32* @user_name_tree, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RB_REMOVE(i32 %81, i32 %84, %struct.userent* %6)
  br label %86

86:                                               ; preds = %80, %41
  %87 = load %struct.userent*, %struct.userent** %7, align 8
  %88 = getelementptr inbounds %struct.userent, %struct.userent* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.userent*, %struct.userent** %7, align 8
  %91 = getelementptr inbounds %struct.userent, %struct.userent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %89, i64 %95
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @yp_make_keyval(%struct.ypresp_key_val* @ypproc_next_2_svc.res, i8* %103, i8* %104)
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

108:                                              ; preds = %24
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @strcmp(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %199

114:                                              ; preds = %108
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i8* @calloc(i32 %119, i32 1)
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i8*, i8** @YP_YPERR, align 8
  store i8* %124, i8** getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_next_2_svc.res, i32 0, i32 0), align 8
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

125:                                              ; preds = %114
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strncpy(i8* %126, i32 %130, i32 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds %struct.groupent, %struct.groupent* %8, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @group_name_tree, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = bitcast %struct.groupent* %8 to %struct.userent*
  %143 = call %struct.userent* @RB_FIND(i32 %138, i32 %141, %struct.userent* %142)
  %144 = bitcast %struct.userent* %143 to %struct.groupent*
  store %struct.groupent* %144, %struct.groupent** %9, align 8
  %145 = icmp eq %struct.groupent* %144, null
  br i1 %145, label %146, label %177

146:                                              ; preds = %125
  %147 = load i32, i32* @group_name_tree, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = bitcast %struct.groupent* %8 to %struct.userent*
  %152 = call i32 @RB_INSERT(i32 %147, i32 %150, %struct.userent* %151)
  %153 = load i32, i32* @group_name_tree, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = bitcast %struct.groupent* %8 to %struct.userent*
  %157 = call %struct.userent* @RB_NEXT(i32 %153, i32* %155, %struct.userent* %156)
  %158 = bitcast %struct.userent* %157 to %struct.groupent*
  store %struct.groupent* %158, %struct.groupent** %9, align 8
  %159 = icmp eq %struct.groupent* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %146
  %161 = load i32, i32* @group_name_tree, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = bitcast %struct.groupent* %8 to %struct.userent*
  %166 = call i32 @RB_REMOVE(i32 %161, i32 %164, %struct.userent* %165)
  %167 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %167, i8** getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_next_2_svc.res, i32 0, i32 0), align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @free(i8* %168)
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

170:                                              ; preds = %146
  %171 = load i32, i32* @group_name_tree, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = bitcast %struct.groupent* %8 to %struct.userent*
  %176 = call i32 @RB_REMOVE(i32 %171, i32 %174, %struct.userent* %175)
  br label %177

177:                                              ; preds = %170, %125
  %178 = load %struct.groupent*, %struct.groupent** %9, align 8
  %179 = getelementptr inbounds %struct.groupent, %struct.groupent* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.groupent*, %struct.groupent** %9, align 8
  %182 = getelementptr inbounds %struct.groupent, %struct.groupent* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %180, i64 %186
  store i8* %187, i8** %10, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8* %193, i8** %10, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 @yp_make_keyval(%struct.ypresp_key_val* @ypproc_next_2_svc.res, i8* %194, i8* %195)
  %197 = load i8*, i8** %11, align 8
  %198 = call i32 @free(i8* %197)
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

199:                                              ; preds = %108
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load i8*, i8** @YP_NOMAP, align 8
  store i8* %204, i8** getelementptr inbounds (%struct.ypresp_key_val, %struct.ypresp_key_val* @ypproc_next_2_svc.res, i32 0, i32 0), align 8
  store %struct.ypresp_key_val* @ypproc_next_2_svc.res, %struct.ypresp_key_val** %3, align 8
  br label %205

205:                                              ; preds = %199, %177, %160, %123, %86, %71, %39, %17
  %206 = load %struct.ypresp_key_val*, %struct.ypresp_key_val** %3, align 8
  ret %struct.ypresp_key_val* %206
}

declare dso_local i32 @yp_valid_domain(i32, %struct.ypresp_val*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local %struct.userent* @RB_FIND(i32, i32, %struct.userent*) #1

declare dso_local i32 @RB_INSERT(i32, i32, %struct.userent*) #1

declare dso_local %struct.userent* @RB_NEXT(i32, i32*, %struct.userent*) #1

declare dso_local i32 @RB_REMOVE(i32, i32, %struct.userent*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @yp_make_keyval(%struct.ypresp_key_val*, i8*, i8*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
