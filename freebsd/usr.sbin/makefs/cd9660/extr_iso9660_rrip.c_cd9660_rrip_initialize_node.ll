; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_initialize_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_initialize_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i32, i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64*, i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.ISO_SUSP_ATTRIBUTES = type { i32 }

@CD9660_TYPE_DOT = common dso_local global i32 0, align 4
@SUSP_RRIP_ER_EXT_ID = common dso_local global i32 0, align 4
@SUSP_RRIP_ER_EXT_DES = common dso_local global i32 0, align 4
@SUSP_RRIP_ER_EXT_SRC = common dso_local global i32 0, align 4
@SUSP_TYPE_RRIP = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_PX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@SUSP_LOC_ENTRY = common dso_local global i32 0, align 4
@rr_ll = common dso_local global i32 0, align 4
@CD9660_TYPE_DOTDOT = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_PL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@SUSP_LOC_DOTDOT = common dso_local global i32 0, align 4
@RRIP_DEFAULT_MOVE_DIR_NAME = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_CL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"CL\00", align 1
@SUSP_ENTRY_RRIP_RE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"RE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cd9660_rrip_initialize_node(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  store %struct.ISO_SUSP_ATTRIBUTES* null, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CD9660_TYPE_DOT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = load i32, i32* @SUSP_RRIP_ER_EXT_ID, align 4
  %31 = load i32, i32* @SUSP_RRIP_ER_EXT_DES, align 4
  %32 = load i32, i32* @SUSP_RRIP_ER_EXT_SRC, align 4
  %33 = call i32 @cd9660_susp_ER(%struct.TYPE_18__* %29, i32 1, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %51 = load i32, i32* @SUSP_ENTRY_RRIP_PX, align 4
  %52 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %53 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %50, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  store %struct.ISO_SUSP_ATTRIBUTES* %53, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %54 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = call i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES* %54, %struct.TYPE_19__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %62 = load i32, i32* @rr_ll, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* %60, %struct.ISO_SUSP_ATTRIBUTES* %61, i32 %62)
  br label %64

64:                                               ; preds = %49, %42, %37, %34
  br label %218

65:                                               ; preds = %4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CD9660_TYPE_DOTDOT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %65
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = icmp ne %struct.TYPE_19__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %89 = load i32, i32* @SUSP_ENTRY_RRIP_PX, align 4
  %90 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %91 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %88, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %90)
  store %struct.ISO_SUSP_ATTRIBUTES* %91, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %92 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = call i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES* %92, %struct.TYPE_19__* %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %100 = load i32, i32* @rr_ll, align 4
  %101 = call i32 @TAILQ_INSERT_TAIL(i32* %98, %struct.ISO_SUSP_ATTRIBUTES* %99, i32 %100)
  br label %102

102:                                              ; preds = %87, %80, %75, %72
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %112 = load i32, i32* @SUSP_ENTRY_RRIP_PL, align 4
  %113 = load i32, i32* @SUSP_LOC_DOTDOT, align 4
  %114 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %111, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  store %struct.ISO_SUSP_ATTRIBUTES* %114, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %115 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = call i32 @cd9660_rrip_PL(%struct.ISO_SUSP_ATTRIBUTES* %115, %struct.TYPE_18__* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %121 = load i32, i32* @rr_ll, align 4
  %122 = call i32 @TAILQ_INSERT_TAIL(i32* %119, %struct.ISO_SUSP_ATTRIBUTES* %120, i32 %121)
  br label %123

123:                                              ; preds = %110, %105, %102
  br label %217

124:                                              ; preds = %65
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = call i32 @cd9660_rrip_initialize_inode(%struct.TYPE_18__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = icmp eq %struct.TYPE_18__* %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = load i32, i32* @RRIP_DEFAULT_MOVE_DIR_NAME, align 4
  %135 = call i32 @cd9660_rrip_add_NM(%struct.TYPE_18__* %133, i32 %134)
  br label %180

136:                                              ; preds = %124
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = icmp ne %struct.TYPE_19__* %139, null
  br i1 %140, label %141, label %179

141:                                              ; preds = %136
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @strlen(i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %147, %154
  br i1 %155, label %176, label %156

156:                                              ; preds = %141
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @memcmp(i32 %161, i32 %166, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %156, %141
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = call i32 @cd9660_rrip_NM(%struct.TYPE_18__* %177)
  br label %179

179:                                              ; preds = %176, %156, %136
  br label %180

180:                                              ; preds = %179, %132
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %180
  %186 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %187 = load i32, i32* @SUSP_ENTRY_RRIP_CL, align 4
  %188 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %189 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %186, i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  store %struct.ISO_SUSP_ATTRIBUTES* %189, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %190 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = call i32 @cd9660_rrip_CL(%struct.ISO_SUSP_ATTRIBUTES* %190, %struct.TYPE_18__* %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  %195 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %196 = load i32, i32* @rr_ll, align 4
  %197 = call i32 @TAILQ_INSERT_TAIL(i32* %194, %struct.ISO_SUSP_ATTRIBUTES* %195, i32 %196)
  br label %198

198:                                              ; preds = %185, %180
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %205 = load i32, i32* @SUSP_ENTRY_RRIP_RE, align 4
  %206 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %207 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %204, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  store %struct.ISO_SUSP_ATTRIBUTES* %207, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %208 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %210 = call i32 @cd9660_rrip_RE(%struct.ISO_SUSP_ATTRIBUTES* %208, %struct.TYPE_18__* %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  %213 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %214 = load i32, i32* @rr_ll, align 4
  %215 = call i32 @TAILQ_INSERT_TAIL(i32* %212, %struct.ISO_SUSP_ATTRIBUTES* %213, i32 %214)
  br label %216

216:                                              ; preds = %203, %198
  br label %217

217:                                              ; preds = %216, %123
  br label %218

218:                                              ; preds = %217, %64
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cd9660_susp_ER(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32, i32, i8*, i32) #1

declare dso_local i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_19__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ISO_SUSP_ATTRIBUTES*, i32) #1

declare dso_local i32 @cd9660_rrip_PL(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_18__*) #1

declare dso_local i32 @cd9660_rrip_initialize_inode(%struct.TYPE_18__*) #1

declare dso_local i32 @cd9660_rrip_add_NM(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @cd9660_rrip_NM(%struct.TYPE_18__*) #1

declare dso_local i32 @cd9660_rrip_CL(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_18__*) #1

declare dso_local i32 @cd9660_rrip_RE(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
