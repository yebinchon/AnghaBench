; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_print_state_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_print_state_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.pf_state_key** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pf_state_key = type { i32, i32, i32*, i32* }

@PF_SK_WIRE = common dso_local global i64 0, align 8
@PF_SK_STACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ICMP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ICMPv6\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" in\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" out\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" wire: \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" stack: \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c" [lo=%u high=%u win=%u modulator=%u\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" wscale=%u\00", align 1
@PF_WSCALE_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" %u:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*, %struct.pf_state_key*, %struct.pf_state_key*)* @pf_print_state_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_print_state_parts(%struct.pf_state* %0, %struct.pf_state_key* %1, %struct.pf_state_key* %2) #0 {
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.pf_state_key*, align 8
  %6 = alloca %struct.pf_state_key*, align 8
  %7 = alloca %struct.pf_state_key*, align 8
  %8 = alloca %struct.pf_state_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store %struct.pf_state_key* %1, %struct.pf_state_key** %5, align 8
  store %struct.pf_state_key* %2, %struct.pf_state_key** %6, align 8
  %11 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %12 = icmp ne %struct.pf_state_key* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %17 = icmp ne %struct.pf_state* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %20 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %19, i32 0, i32 3
  %21 = load %struct.pf_state_key**, %struct.pf_state_key*** %20, align 8
  %22 = load i64, i64* @PF_SK_WIRE, align 8
  %23 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %21, i64 %22
  %24 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi %struct.pf_state_key* [ %24, %18 ], [ null, %25 ]
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi %struct.pf_state_key* [ %14, %13 ], [ %27, %26 ]
  store %struct.pf_state_key* %29, %struct.pf_state_key** %7, align 8
  %30 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %31 = icmp ne %struct.pf_state_key* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  br label %47

34:                                               ; preds = %28
  %35 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %36 = icmp ne %struct.pf_state* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %39 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %38, i32 0, i32 3
  %40 = load %struct.pf_state_key**, %struct.pf_state_key*** %39, align 8
  %41 = load i64, i64* @PF_SK_STACK, align 8
  %42 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %40, i64 %41
  %43 = load %struct.pf_state_key*, %struct.pf_state_key** %42, align 8
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi %struct.pf_state_key* [ %43, %37 ], [ null, %44 ]
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi %struct.pf_state_key* [ %33, %32 ], [ %46, %45 ]
  store %struct.pf_state_key* %48, %struct.pf_state_key** %8, align 8
  %49 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %50 = icmp ne %struct.pf_state_key* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %53 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  br label %65

55:                                               ; preds = %47
  %56 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %57 = icmp ne %struct.pf_state_key* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %60 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 0, %62 ]
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i32 [ %54, %51 ], [ %64, %63 ]
  store i32 %66, i32* %9, align 4
  %67 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %68 = icmp ne %struct.pf_state* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %71 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 0, %73 ]
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %89 [
    i32 133, label %77
    i32 132, label %79
    i32 131, label %81
    i32 130, label %83
    i32 135, label %85
    i32 134, label %87
  ]

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %92

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %92

81:                                               ; preds = %74
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %92

83:                                               ; preds = %74
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %92

85:                                               ; preds = %74
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %92

87:                                               ; preds = %74
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %87, %85, %83, %81, %79, %77
  %93 = load i32, i32* %10, align 4
  switch i32 %93, label %98 [
    i32 129, label %94
    i32 128, label %96
  ]

94:                                               ; preds = %92
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %98

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %96, %94
  %99 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %100 = icmp ne %struct.pf_state_key* %99, null
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %104 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %108 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %113 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @pf_print_host(i32* %106, i32 %111, i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %117 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %118 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %122 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %127 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pf_print_host(i32* %120, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %101, %98
  %131 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %132 = icmp ne %struct.pf_state_key* %131, null
  br i1 %132, label %133, label %169

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %135 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %136 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %137 = icmp ne %struct.pf_state_key* %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %133
  %139 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %140 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %144 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %149 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @pf_print_host(i32* %142, i32 %147, i32 %150)
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %153 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %154 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %158 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %163 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @pf_print_host(i32* %156, i32 %161, i32 %164)
  br label %168

166:                                              ; preds = %133
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %138
  br label %169

169:                                              ; preds = %168, %130
  %170 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %171 = icmp ne %struct.pf_state* %170, null
  br i1 %171, label %172, label %262

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 131
  br i1 %174, label %175, label %252

175:                                              ; preds = %172
  %176 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %177 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %181 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %185 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %189 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %179, i32 %183, i32 %187, i32 %191)
  %193 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %194 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %175
  %199 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %200 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %206 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @PF_WSCALE_MASK, align 4
  %210 = and i32 %208, %209
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %204, %198, %175
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %214 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %215 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %219 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %223 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %227 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %217, i32 %221, i32 %225, i32 %229)
  %231 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %232 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %212
  %237 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %238 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %236
  %243 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %244 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PF_WSCALE_MASK, align 4
  %248 = and i32 %246, %247
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %242, %236, %212
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %172
  %253 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %254 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %258 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %256, i32 %260)
  br label %262

262:                                              ; preds = %252, %169
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pf_print_host(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
